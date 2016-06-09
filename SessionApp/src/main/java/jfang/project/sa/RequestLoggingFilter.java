package jfang.project.sa;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by jfang on 6/9/16.
 */
@WebFilter("/*")
public class RequestLoggingFilter implements Filter {

    private final static Logger logger = LoggerFactory.getLogger(RequestLoggingFilter.class);

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        logger.info(((HttpServletRequest)request).getRequestURI());
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }

}
