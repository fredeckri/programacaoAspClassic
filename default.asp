
<%
Response.AddHeader "Content-Type", "text/html;charset=UTF-8"
Response.CodePage = 65001
Response.CharSet = "UTF-8"
%>
<!--#include file="titulo.asp"-->
<!--#include file="funcoes.asp"-->


<body>
    <header>
        <%="<h1>'Variaveis'</h1>"%>
        <hr>
    </header>
    <main>
        <div class="row col-12">
            <div class="col-2">
                <h6>
                    <%call Lair(3500.32,4550.78)%>
                </h6>

            </div>
            <div class="col-2">
                <h6><%response.write(liquidezImediata(200,50))%></h6>
            </div>
            <div class="col-2">
                <h6><%response.write(dados("Frederick"))%></h6>
                <h6><%response.write(dados("select02"))%></h6>
                <h6><%response.write(dados("select03"))%></h6>
                <h6><%response.write(dados("select04"))%></h6>
                <h6><%response.write(result)%></h6>
            </div>
            <div class="col-2">
                <form action="funcoes2.asp" method="get">

                    <label for="nome">Nome</label>
                    <input type="text" name="nome">
                    <label for="sobrenome">Sobrenome</label>
                    <input type="text" name="sobrenome">
                    <button type="submit">Enviar</button>
                </form>
            </div>
            <div class="col-2">
                <form action="funcoes2.asp" method="post">

                    <label for="nome">Nome</label>
                    <input type="text" name="nome">
                    <label for="sobrenome">Sobrenome</label>
                    <input type="text" name="sobrenome">
                    <button type="submit">Enviar</button>
                </form>
            </div>
            <div class="col-2">
            <%

                fromDate="31-10-2020 00:00:00"
                toDate="30-11-2020 23:59:00"
                response.write(DateDiff("yyyy",fromDate,toDate) & "<br />")
                response.write(DateDiff("q",fromDate,toDate) & "<br />")
                response.write(DateDiff("m",fromDate,toDate) & "<br />")
                response.write(DateDiff("y",fromDate,toDate) & "<br />")
                response.write(DateDiff("d",fromDate,toDate) & "<br />")
                response.write(DateDiff("w",fromDate,toDate) & "<br />")
                response.write(DateDiff("ww",fromDate,toDate) & "<br />")
                response.write(DateDiff("h",fromDate,toDate) & "<br />")
                response.write(DateDiff("n",fromDate,toDate) & "<br />")
                response.write(DateDiff("s",fromDate,toDate) & "<br />")

               
                %>
            </div>
        </div>
        <div class="col-2">
        <%
                fromDate=CDate("2020/12/31")
                toDate=CDate("2020/10/10")

                
                if (DateDiff("w",fromDate,toDate,vbMonday)>30) then
                response.write(DateDiff("w",fromDate,toDate,vbMonday))
                end if
        %>
        </div>

    </main>
    <footer>

    </footer>
</body>


</html>