<%


response.write(request.querystring("nome"))
response.write("<br>")
response.write(request.querystring("sobrenome"))



response.write(request.form("nome"))
response.write("<br>")
response.write(request.form("sobrenome"))



%>