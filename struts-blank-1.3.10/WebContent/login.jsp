<%-- (1) --%>
<%@ page contentType="text/html; charset=Shift_JIS" %>
<%-- (2) --%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>

<html>
<head><title>login���</title></head>
<body>

<html:errors/>  <%-- (3) --%>

ID�E�p�X���[�h����͂��Ă��������B
<html:form action="/authentication" focus="id">  <%-- (4) --%>
    <html:text property="id" size="16"/>  <%-- (5) --%>
    <br>
    <%-- (6) --%>
    <html:password property="pass" size="16" redisplay="false"/>
    <br>
    <html:submit property="submit" value="���M"/>
    <html:reset value="���Z�b�g"/>
</html:form>

</body>
</html>