	<!-- nav-->
	<!--#include file="topo.asp"-->
	<!-- nav-->
    <div class="header">
  <h1 class="banner">Site Highcharts</h1>
</div>
	<!-- nav-->
	<!--#include file="nav.asp"-->
	<!-- nav-->
    <div class="col-9 col-s-12">
    
    
    
       <div>
            <!--<strong>Valor:</strong><span class="valor">Null</span>-->
       </div>
        <div>
        <div class="input-group mb-3 col-6">
            <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1">Search</span>
            </div>
            <input id='pesquisa' class="form-control" type="text" name="nome" value="" autocomplete="off" autofocus>

        </div>
         <div class="mb-3 col-6">
            <button id="btnPesquisar1" class="btn-success btn col-9">Pesquisar</button>
        </div>     
           <div id="loading" class="display" style="display:none">
             
             </div>
        <table id="tabela01" class="table">
        <thead class="thead-dark ">
            <th>Nome</th>
            <th>Curso</th>
            <th>Valor</th>
        </thead>
          
            <tbody id="tbldados">
  
            </tbody>
             
        </table>
        </div>
        <div class="input-group mb-3 col-6">
            <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1">Search</span>
            </div>
            <input id='pesquisa2' class="form-control" type="text" name="nome" value="" autocomplete="off" autofocus>
        </div>     
        <div class="mb-3 col-6">
            <button id="btnPesquisar2" class="btn-success btn col-9">Pesquisar</button>
        </div>
        <table class="table">
        <thead>
            <th>Id</th>
            <th>Curso</th>
        </thead>
            <tbody id="tbldados2">
              
            </tbody>
            
        </table>
        </div>
  </div>     
 </div> <!-- finaldapagina-->
<div class="footer">
  <p><h3 class="banner">2020<h3><br>Site produzido por <a _blank href="https://www.frederickmarques.com.br">Frederick - Marques </a></p>
</div>
    <script>
    
    let tbljson;
    var ini, fim;
    var objetojson={}
    var linhas='';
        $("#btnPesquisar1").click(()=>{
            
            if ($('#pesquisa').val().length==0)
            return 
            else
            {
                $("#loading").css("display","block");    
                montaTabela();
            }
            
        });                  
        $("#btnPesquisar2").click(()=>{
            if ($('#pesquisa2').val().length==0)
            return 
            else
            {
                montaTabela2();
            }
        });                  

        $('#pesquisa').keyup(event=>{
           let tecla = event.keyCode
           $("#loading").css("display","block");
           if (tecla==13) {
                montaTabela();                
           }
          //alert($('#pesquisa').val());
            if (($('#pesquisa').val().length)>0)
                {
                    GetData('assets/asp/SelectAluno.asp?nome=',$('#pesquisa').val(),1)
                    }
            //implementar limpeza de form
           if (($('#pesquisa').val().length)==0 )
            $("#tbldados").empty();

        });

         $('#pesquisa2').keyup(event=>{
          let tecla = event.keyCode
           console.log(tecla)
           if (tecla==13) {
               montaTabela2();                
           }
          //alert($('#pesquisa').val());
            if (($('#pesquisa2').val().length)>0)
                {
                    GetData('assets/asp/SelectAluno02.asp?curso=',$('#pesquisa2').val(),2)
                    }
            //implementar limpeza de form
           if (($('#pesquisa2').val().length)==0 )
            $("#tbldados2").empty();

        });
        
       
        /*   
        function json2array(json){
        var result = [];
        var keys = Object.keys(json);
        keys.forEach(function(key){
            result.push(json[key]);
        });
        return result;
        }
        */
   
    async function montaTabela() {
     ini = performance.now(); //teste de performance
        
        $("#tbldados").empty();
       
                    //for (let repeticao=0;repeticao<=15000; await repeticao++)
                    {
                        for (let i=0; i<objetojson["dados"].length;i++)
                        {                       
                           linhas = linhas+`<tr>
                            <td>${objetojson["dados"][i]["aluno"]}</td>
                            <td>${objetojson["dados"][i]["Curso"]}</td>
                            <td>${objetojson["dados"][i]["Valor"]}</td>
                            </tr>`;
                            
                        }
                    }
     
     $("#loading").css('display','none')           
     $("#tbldados").append(linhas);
     fim = performance.now(); //teste de performance    
     console.log(`Tempo de execução ${(fim - ini)}ms`); //teste de performance       
    }
 function montaTabela2() {
     ini = performance.now(); //teste de performance
         $("#tbldados2").empty();
        // for (let repeticao=0;repeticao<=15000;repeticao++)
                    {
                        for (let i in objetojson["dados"])
                        {                       
                            $("#tbldados2").append('<tr>');
                            $("#tbldados2").append(`<td>${objetojson.dados[i].idcurso}</td>`)
                            $("#tbldados2").append(`<td>${objetojson.dados[i].nome}`)
                            $("#tbldados2").append('</tr>');
                        }
                    }
    fim = performance.now(); //teste de performance
    console.log(`Tempo de execução ${(fim - ini)}ms`); //teste de performance
    }
    function GetData(link,value,sel) {
         ini = performance.now(); //teste de performance
        $.ajax({
            type: 'get'
                //Caminho do WebService + / + nome do metodo
                , url: link+value
                , async:true
                , contentType: 'application/json; charset=utf-8'
                , dataType: 'text'
                //Abaixo adicione as variáveis caso haja alguma.
                , data: {data:value}
                , success: function (data, status) {
                    //Caso não ocorra nenhum tipo de erro:
                    //$('.valor').text(data);
                    console.log(data)
                    
                     objetojson=JSON.parse(data)
                                
                     //console.log(typeof(objetojson));
                     //console.log(objetojson);
                     
                    fim = performance.now(); //teste de performance
                    console.log(`Tempo de execução: ${(fim - ini)}ms`); //teste de performance


                    tbljson=data;
                    //$('.valor').text(data);
                },
                complete(xhr, status){
                  console.log(status);
        
                }
                , error: function (xmlHttpRequest, status, err) {
                    //Caso ocorra algum erro:
                    $('.valor').html('Ocorreu um erro');
                }
               
        });
        
    }
    </script>
    </body>
</html>