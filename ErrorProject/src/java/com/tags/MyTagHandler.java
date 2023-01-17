package com.tags;

import java.util.Date;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author dibyajyotimishra
 */
public class MyTagHandler extends TagSupport {

    @Override
    public int doStartTag() throws JspException {
        
        try {
            
            // task the tag will perform
            JspWriter out = pageContext.getOut();
            
            out.println("<h2>This is a custom tag...</h2>");
            out.println("<p>This is a custom message...</p>");
            out.println("<h1>Todays's date:  " + new Date().toString() + "</h1>");
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return SKIP_BODY;
    }
    
}
