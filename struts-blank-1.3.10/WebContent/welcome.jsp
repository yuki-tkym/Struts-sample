<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>

<logic:notPresent name="id" scope="session">  <%-- (1) --%>
    <logic:redirect forward="fail"/>
</logic:notPresent>

<html>
<head><title>welcom���</title></head>
<body>

�悤����
<bean:write name="id" scope="session"/>  <%-- (2) --%>
����

</body>
</html>