<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Martinis - Create New Character</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">
    </head>
    <body>
        <jsp:include page="../includes/nav.jsp" />
        <div class="container">
            <jsp:include page="../includes/logout.jsp" />
            <div class="page-header">
                <h1>Create New Character</h1>
            </div>
            <sf:form class="form-horizontal" action="${pageContext.request.contextPath}/character/create" method="post" modelAttribute="commandModel">
                <sf:hidden path="projectId" />
                <div class="form-group">
                    <label for="name" class="col-md-2 control-label">Name:</label>
                    <div class="col-md-10">
                        <sf:input type="text" class="form-control" path="name" />
                        <sf:errors path="name" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="fullName" class="col-md-2 control-label">Full Name:</label>
                    <div class="col-md-10">
                        <sf:input type="text" class="form-control" path="fullName" />
                        <sf:errors path="fullName" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="actorId" class="col-md-2 control-label">Actor:</label>
                    <div class="col-md-10">
                        <sf:select class="form-control" path="actorId">
                            <sf:option value="" label="No actor" />
                            <sf:options items="${viewModel.actors}" itemValue="id" itemLabel="name" />
                        </sf:select>
                        <sf:errors path="actorId" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <a href="${pageContext.request.contextPath}/project/show?id=${viewModel.projectId}" class="btn btn-default" role="button">Cancel</a>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </sf:form>
        </div>
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </body>
</html>
