<%
'Procedure'

dim dadosArray (10)

dim texto 
texto = "salvar este texto no drive"

sub Lair(Despesa,Receita)
    lucro=100000
    resultado=lucro+Receita-Despesa
    response.write("O Lucro Antes do Imposto de Renda = R$ "&resultado)
end sub



Function liquidezImediata(d,p)
liquidezImediata="A liquidez imediata : "&d/p
End Function


Function dados(sel)

sel="{dados:['nome':"&sel&"]}"

dados=sel
End Function






dadosArray(0) = dados("teste")
dadosArray(1) = dados("fulanos")
dadosArray(2) = dados("cicrano")
dadosArray(3) = dados("beltrano")
dadosArray(4) = dados("testano")

for i=0 to 4
result = result + dadosArray(i)+","
Next













%>