package kr.co.bit.day7;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class MyServlet extends HttpServlet{

    @Override
    public void init() throws ServletException {

        System.out.println("init");
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("get");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("post");
        resp.setContentType("text/html"); //컨텐츠 타입을 지정해줘야 하지만 안해줘도 상관없음
        PrintWriter out = resp.getWriter(); //보낼거기 때문에 response객체 사용하는데 resp로 받아와서 resp를 써줌
        out.print("<html><body><h1>Hello Servlet!<h1></body></html>");
        String id = req.getParameter("id"); //resp와 같은경우
        System.out.println(id);
        ServletConfig config = getServletConfig(); //xml에 저장한 서블릿의 환경변수를 가져올수 있음
        String data = config.getInitParameter("data");
        System.out.println(data);
        ServletContext context = getServletContext(); //xml에 저장한 전체 환경변수를 가져올때
        String dbinfo = context.getInitParameter("dbinfo");
        System.out.println(dbinfo);

    }



    @Override
    public void destroy() {
        System.out.println("destroy");
    }
}
