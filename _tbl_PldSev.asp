<!--pldAg-->
<style>
	td.details-control {
		background: url('../resources/details_open.png') no-repeat center center;
		cursor: pointer;
	}

	tr.shown td.details-control {
		background: url('../resources/details_close.png') no-repeat center center;
	}

	.pai {
		display: block;
	}

	.toggle {
		display: block;
	}

	.tdoculta {
		display: none;
	}

	/*input[type=checkbox]:checked table ~ tr.toggle { display: table-row; width: calc(100% - 20px); } */

	.toggle.active {
		display: table-row;
		width: calc(100% - 20px);
	}

	.tblPldSev {
		max-height: 100px !important;
		overflow-y: auto;
		min-width: 100% !important;
		overflow-x: hidden !important;
	}

	.tblPldSev>table {
		overflow-x: hidden !important;
	}

	.botao-float {
		min-height: 50px;
		margin-top: -20px;
		position: absolute;
	}
	.teste{
		min-height: 50px;
		border-radius: 15px;
	}
	.flex-menu{
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.icoDisable {
		opacity: 0.2;
	}
	.divTbls {
		max-height: 600px;
		overflow: auto;
		overflow-x: hidden;
		overflow-y: scroll;
	}
</style>
<h1>
	<%=request.querystring("nome")%>
</h1>
<div class="d-flex justify-content-center">
	<button id="imprimirDados" class="btn btn-primary">
		<i class="fas fa-print fa-lg ico ">&nbsp</i>
		Imprimir Dados</button> 
</div>
<div>


	<div id="printTables" class="col-12  overflow-x-hidden divTbls">
		<div class="flex-menu">
			<div> <button class="btn btn-info teste ">EMPRESA TESTES 01</button></div>
			<div> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-flag fa-lg ico icoAzul">&nbsp</i>
					USL
				</h6>				
			</div>
			<div class="icoDisable"> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-shield-alt fa-lg ico icoLaranja ">&nbsp</i>
					Região de Fronteira
				</h6>

			</div>
			<div class="icoDisable"> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-asterisk fa-lg ico icoVermelho">&nbsp</i>
					ALTO RISCO
				</h6>
			</div>
		</div>
		<div>
			<table id="tblPldSev" class=" min-width:100%; max-height:150px;" >
				<thead class="pointer">
					<tr>
						<th>Tipo</th>
						<th>Criticidade</th>
						<th>Data</th>
						<th>Valor total</th>
						<th>Quantidade</th>
						<th>% na Prestação</th>
						<th>Detalhamento</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Boleto</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalBoleto"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
				</tbody>
			</table>
		</div>

		<!--linha tabelas-->
		<div class="flex-menu">
			<div> <button class="btn btn-warning teste ">EMPRESA 00008</button></div>
			<div class="icoDisable"> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-flag fa-lg ico icoAzul">&nbsp</i>
					USL
				</h6>				
			</div>
			<div> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-shield-alt fa-lg ico icoLaranja ">&nbsp</i>
					Região de Fronteira
				</h6>

			</div>
			<div class="icoDisable"> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-asterisk fa-lg ico icoVermelho">&nbsp</i>
					ALTO RISCO
				</h6>
			</div>
		</div>
		<div>
			<table id="tblPldSev" class=" min-width:100%; max-height:150px;" >
				<thead class="pointer">
					<tr>
						<th>Tipo</th>
						<th>Criticidade</th>
						<th>Data</th>
						<th>Valor total</th>
						<th>Quantidade</th>
						<th>% na Prestação</th>
						<th>Detalhamento</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Boleto</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalBoleto"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
				</tbody>
			</table>
		</div>
		<!--linha tabelas-->

		<!--linha tabelas-->
		<div class="flex-menu">
			<div> <button class="btn btn-warning teste ">EMPRESA 00008</button></div>
			<div class="icoDisable"> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-flag fa-lg ico icoAzul">&nbsp</i>
					USL
				</h6>				
			</div>
			<div> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-shield-alt fa-lg ico icoLaranja ">&nbsp</i>
					Região de Fronteira
				</h6>

			</div>
			<div class="icoDisable"> 
				<h6 class="text-dark mt-1 fontCardsPld ">
					<i class="fas fa-asterisk fa-lg ico icoVermelho">&nbsp</i>
					ALTO RISCO
				</h6>
			</div>
		</div>
		<div>
			<table id="tblPldSev" class=" min-width:100%; max-height:150px;" >
				<thead class="pointer">
					<tr>
						<th>Tipo</th>
						<th>Criticidade</th>
						<th>Data</th>
						<th>Valor total</th>
						<th>Quantidade</th>
						<th>% na Prestação</th>
						<th>Detalhamento</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Boleto</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalBoleto"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
					<tr class="details-control">
						<td class="tipo">Cheque</td>
						<td><i class="fas fa-exclamation-triangle fa-lg ico icoVermelho">&nbsp</i></td>
						<td>20/06/2020</td>
						<td>2000,00</td>
						<td>60</td>
						<td>60%</td>
						<td style="text-align: center;"><i class="fas fa-edit fa-lg ico icoVermelho" data-toggle="modal"
								data-target="#ModalCheques"></i></td>
						<td style="text-align: center;"> <i class="fas fa-circle fa-lg ico icoVerde"></i>&nbsp<i
								class="fas fa-circle fa-lg ico icoVermelho"></i></td>
						

					</tr>
				</tbody>
			</table>
		</div>
		<!--linha tabelas-->
	</div>
	

	
</div>


<script>

	$("#tblPldSev").on("click", '.teste', function () {
		$(this).parent().parent().parent().next("tr").toggleClass("active");
		console.log($(this).parent().parent().next("tr").toggleClass("active"))
	});
/*
	
					$("#data tr td>button").on("click", function() {
						//console.log('clicou')
					  $(this).parent().parent().next("tr").toggleClass("active");
					  console.log($(this).parent().parent().next("tr"))
					  });
	
				*/
	$("#imprimirDados").mousedown(function(){
	
       let tblPrin = document.getElementById("printTables")
       let newWin = window.open("")
       newWin.document.write(tblPrin.outerHTML)
       newWin.print();
       newWin.close()
     })			
</script>