package mg.itu.prom16;

import mg.itu.prom16.MyController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ModuleLayer.Controller;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

public class FrontController extends HttpServlet {
    private List<String> controller = new ArrayList<>();
    private String controllerPackage;
    boolean checked = false;

    @Override
    public void init() throws ServletException {
        super.init();
        controllerPackage = getInitParameter("controller-package");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        if (!checked){
            scan();
            checked = true;
        }
        out.println("<html>");
        out.println("<head>");
        out.println("<title>FrontController</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>URL actuelle :</h1>");
        out.println("<p>" + request.getRequestURL() + "</p>");
        
        out.println("<h2>Vos controlleurs : </h2>");
        
        for (String className : controller) {
            out.println("<p> @"+className+"</p>");
        }
        out.println("</body>");
        out.println("</html>");

        out.close();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    // private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
    //     response.setContentType("text/html");
    //     PrintWriter out = response.getWriter();
    //     out.println("<html>");
    //     out.println("<head>");
    //     out.println("<title>FrontController</title>");
    //     out.println("</head>");
    //     out.println("<body>");
    //     out.println("<h1>URL actuelle :</h1>");
    //     out.println("<p>" + request.getRequestURL() + "</p>");
    //     out.println("</body>");
    //     out.println("</html>");
    //     out.close();
    // }

    public void scan() {
        try {
            String classesPath = getServletContext().getRealPath("../webapps/WEB-INF/classes/controller");
            System.out.println("Before decoded path: " + decodedPath);
            String decodedPath = URLDecoder.decode(classesPath, "UTF-8");
            String packagePath = decodedPath +"\\"+ controllerPackage.replace('.', '/');
            File packageDirectory = new File(packagePath);
            if (packageDirectory.exists() && packageDirectory.isDirectory()) {
                File[] classFiles = packageDirectory.listFiles((dir, name) -> name.endsWith(".class"));
                if (classFiles != null) {
                    for (File classFile : classFiles) {
                        String className = controllerPackage + '.' + classFile.getName().substring(0, classFile.getName().length() - 6);
                        try {
                            Class<?> classe = Class.forName(className);
                            if (classe.isAnnotationPresent(MyController.class)) {
                                controller.add(className);
                            }
                        } catch (ClassNotFoundException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
