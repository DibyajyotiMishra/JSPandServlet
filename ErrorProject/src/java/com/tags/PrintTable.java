package com.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author dibyajyotimishra
 */
public class PrintTable extends TagSupport {

    public int number;

    public void setNumber(int number) {
        this.number = number;
    }
    

    @Override
    public int doStartTag() throws JspException {
        try {
            JspWriter out = pageContext.getOut();
            //print table
            out.println("<br>");
            for (int i = 1; i <= 10; i++) {
                
                out.println("<h3>" + i * number + "</h3> <br>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }

}
