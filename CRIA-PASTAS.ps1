#region IMPORTAÇÃO DOS ARQUIVOS
$unidades = Import-Csv .\unidades.csv
$anos = Import-Csv .\anos.csv
$meses = Import-Csv .\meses.csv
$administrativo = Import-Csv .\administrativo.csv
$dp = Import-Csv .\dp.csv
$beneficios = Importc-Csv .\beneficios.csv
$financeiro = Import-Csv .\financeiro.csv
$qualidade = Import-Csv .\qualidade.csv
$rh = Import-Csv .\rh.csv
$seg = Import-Csv .\seg.csv
$suprimentos = Import-Csv .\suprimentos.csv
#endregion IMPORTAÇÃO DOS ARQUIVOS

### DEFINE LOCAL DE CRIAÇÃO DA ESTRUTURA
Set-Location D:\

#region ESTRUTURA ADM
New-Item -Name "ADMINISTRATIVO" -ItemType Directory
Set-Location "ADMINISTRATIVO"
foreach ($item in $administrativo) {
    New-Item -Name $item.NOME -ItemType Directory
    Add-Content .\pode_apagar.txt ok
}

Set-Location "CONTRATOS"
    
New-Item -Name "ALUGUEL" -ItemType Directory
Add-Content .\ALUGUEL\pode_apagar.txt ok
    
New-Item -Name "CARRO" -ItemType Directory
Add-Content .\CARRO\pode_apagar.txt ok
    
New-Item -Name "DIVERSOS" -ItemType Directory
Add-Content .\DIVERSOS\pode_apagar.txt ok
    
Set-Location ..

Set-Location .\'DOCUMENTACAO INSTITUCIONAL'

New-Item -Name "UNIDADES" -ItemType Directory
Set-Location .\UNIDADES\
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    $d = ".\" + $item.NOME + "\pode_apagar.txt"
    Add-Content .\$d ok
}
Set-Location ..

New-Item -Name "DOCUMENTACAOES GERAIS" -ItemType Directory
Add-Content .\'DOCUMENTACAOES GERAIS'\pode_apagar.txt ok

New-Item -Name "ICRO DIGITAL" -ItemType Directory
Add-Content .\'ICRO DIGITAL'\pode_apagar.txt ok

Set-Location ..\..\..\
#endregion ESTRUTURA ADM

#region ESTRUTURA DP
New-Item -Name "DP" -ItemType Directory
Set-Location "DP"

foreach ($item in $dp) {
    New-Item -Name $item.NOME -ItemType Directory
    $d = ".\" + $item.NOME + "\pode_apagar.txt"
    Add-Content .\$d ok
}

Set-Location .\BENEFICIOS\

foreach ($item in $beneficios) {
    New-Item -Name $item.NOME -ItemType Directory
    $d = ".\" + $item.NOME + "\pode_apagar.txt"
    Add-Content .\$d ok
}

Set-Location ..\DOCUMENTACAO\
New-Item -Name 'MODELO DE DOC GERAIS' -ItemType Directory
Add-Content .\'MODELO DE DOC GERAIS'\pode_apagar.txt ok

New-Item -Name 'MODELO DE FICHA FUNCIONAL' -ItemType Directory
Add-Content .\'MODELO DE FICHA FUNCIONAL'\pode_apagar.txt ok

Set-Location ..\'DOCUMENTACAO MENSAL'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location .\UNIDADES\
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        foreach ($mes in $meses) {
            New-Item -Name $mes.MESES -ItemType Directory
            $d = ".\" + $mes.MESES + "\pode_apagar.txt"
            Add-Content .\$d ok
        }
        Set-Location ..
    }    
    Set-Location ..
}

Set-Location ..\..\

Set-Location .\FOPAG

New-Item -Name "UNIDADES" -ItemType Directory
Set-Location .\UNIDADES\
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    $d = ".\" + $item.NOME + "\pode_apagar.txt"
    Add-Content .\$d ok
}

Set-Location ..\..\..\
#endregion ESTRUTURA DP

#region ESTRUTURA FATURAMENTO
New-Item -Name "FAUTRAMENTO" -ItemType Directory
Set-Location "FATURAMENTO"
New-Item -Name "CONTROLE DE NOTAS EMITIDAS" -ItemType Directory
Add-Content .\'CONTROLE DE NOTAS EMITIDAS'\pode_apagar.txt ok

New-Item -Name "NOTAS EMITIDAS" -ItemType Directory
Set-Location .\'NOTAS EMITIDAS'

New-Item -Name "UNIDADES" -ItemType Directory
Set-Location .\UNIDADES\
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        foreach ($mes in $meses) {
            New-Item -Name $mes.MESES -ItemType Directory
            Set-Location $mes.MESES
            
            New-Item -Name "SERVICO" -ItemType Directory
            Set-Location .\SERVICO
            
            New-Item -Name "ENTRADA" -ItemType Directory
            Set-Location .\ENTRADA
            
            New-Item -Name "PDF" -ItemType Directory
            Add-Content .\PDF\pode_apagar.txt ok
            
            New-Item -Name "XML" -ItemType Directory
            Add-Content .\XML\pode_apagar.txt ok

            Set-Location ..\..\

            New-Item -Name "PRODUTO" -ItemType Directory
            Set-Location .\PRODUTO
            
            New-Item -Name "ENTRADA" -ItemType Directory
            Set-Location .\ENTRADA
            
            New-Item -Name "PDF" -ItemType Directory
            Add-Content .\PDF\pode_apagar.txt ok
            
            New-Item -Name "XML" -ItemType Directory
            Add-Content .\XML\pode_apagar.txt ok

            Set-Location ..\..\..\
        }
        Set-Location ..\
    }    
    Set-Location ..\
}
Set-Location ..\..\..\
#endregion ESTRUTURA FATURAMENTO

#region ESTRUTURA FINANCEIRO
New-Item -Name "FINANCEIRO" -ItemType Directory
Set-Location "FINANCEIRO"
foreach ($item in $financeiro) {
    New-Item -Name $item.NOME -ItemType Directory
    Add-Content pode_apagar.txt ok
}
Set-Location .\'COMPROVANTE DE PAGAMENTO'
foreach ($ano in $anos) {
    New-Item -Name $ano.ANOS -ItemType Directory
    Set-Location $ano.ANOS
    foreach ($mes in $meses) {
        New-Item -Name $mes.MESES -ItemType Directory
        $d = ".\" + $mes.MESES + "\pode_apagar.txt"
        Add-Content .\$d ok
    }
    Set-Location ..\..\
}    

Set-Location "CONTAS"
New-Item -Name "A PAGAR" -ItemType Directory
New-Item -Path .\'A PAGAR'\ -Name 'PLANILHAS DE CONTROLE' -ItemType Directory
Add-Content .\'A PAGAR'\'PLANILHAS DE CONTROLE'\pode_apagar.txt ok

New-Item -Path .\'A PAGAR'\ -Name 'PLANILHAS DE CONTROLEJC' -ItemType Directory
Add-Content .\'A PAGAR'\'PLANILHAS DE CONTROLE'\pode_apagar.txt ok

New-Item -Path .\'A PAGAR'\ -Name 'RELATORIOS' -ItemType Directory
Add-Content .\'A PAGAR'\'RELATORIOS'\pode_apagar.txt ok


New-Item -Name "A RECEBER" -ItemType Directory
New-Item -Path .\'A RECEBER'\ -Name 'RELATORIO DE RECEBIMENTO' -ItemType Directory
Add-Content .\'A RECEBER'\'RELATORIO DE RECEBIMENTO'\pode_apagar.txt ok

Set-Location ..\
#endregion ESTRUTURA FINANCEIRO

#region ESTRUTURA QUALIDADE
New-Item -Name "QUALIDADE" -ItemType Directory
Set-Location "QUALIDADE"
foreach ($item in $qualidade) {
    New-Item -Name $item.NOME -ItemType Directory
    Add-Content pode_apagar.txt ok
}

Set-Location 'AUDITORIA'
foreach ($ano in $anos) {
    New-Item -Name $ano.ANOS -ItemType Directory
    Add-Content pode_apagar.txt ok
}
Set-Location ..\

Set-Location 'CERTIFICADO'
New-Item -Name "CALIBRACAO" -ItemType Directory
New-Item -Name "ICRO" -ItemType Directory
Add-Content -Path .\ICRO\pode_apagar.txt ok

Set-Location 'CALIBRACAO'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    New-Item -Name 'CADASTRO DE EQUIPAMENTO POR MEDICAO' -ItemType Directory
    Add-Content -Path .\'CADASTRO DE EQUIPAMENTO POR MEDICAO'\pode_apagar.txt ok
    New-Item -Name 'PROGRAMA DE CALIBRACAO' -ItemType Directory
    Add-Content -Path .\'PROGRAMA DE CALIBRACAO'\pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\..\

Set-Location .\MANUAL
New-Item -Name 'COLABORADOR' -ItemType Directory
Add-Content -Path .\'COLABORADOR'\pode_apagar.txt ok
New-Item -Name 'PROCEDIMENTO' -ItemType Directory
Add-Content -Path .\'PROCEDIMENTO'\pode_apagar.txt ok
New-Item -Name 'QUALIDADE' -ItemType Directory
Add-Content -Path .\'QUALIDADE'\pode_apagar.txt ok

Set-Location ..\

Set-Location '.\PESQUISA DE SATISFACAO'
New-Item -Name 'CLIENTE' -ItemType Directory
Add-Content -Path .\'CLIENTE'\pode_apagar.txt ok
New-Item -Name 'FORNECEDOR' -ItemType Directory
Add-Content -Path .\'FORNECEDOR'\pode_apagar.txt ok

Set-Location ..\

Set-Location .\POLITICA
New-Item -Name 'QUALIDADE' -ItemType Directory
Add-Content -Path .\'QUALIDADE'\pode_apagar.txt ok
New-Item -Name 'SEGURANCA DE MEIO AMBIENTE' -ItemType Directory
Add-Content -Path .\'SEGURANCA DE MEIO AMBIENTE'\pode_apagar.txt ok

Set-Location ..\

Set-Location .\PROGRAMAS
New-Item -Name 'ANUAL DE CAPACITACAO' -ItemType Directory
Add-Content -Path .\'ANUAL DE CAPACITACAO'\pode_apagar.txt ok
New-Item -Name 'AUDITORIA INTERNA' -ItemType Directory
Add-Content -Path .\'AUDITORIA INTERNA'\pode_apagar.txt ok

Set-Location .\'ANUAL DE CAPACITACAO'
New-Item -Name 'LISTA DE TREINAMENTO' -ItemType Directory
Set-Location .\'LISTA DE TREINAMENTO'
foreach ($ano in $anos) {
    New-Item -Name $ano.ANOS -ItemType Directory
    $d = ".\" + $ano.ANOS.ToString() + "\pode_apagar.txt" 
    Add-Content $d ok
}
Set-Location ..\..\

Set-Location .\'AUDITORIA INTERNA'
foreach ($ano in $anos) {
    New-Item -Name $ano.ANOS -ItemType Directory
    Set-Location $ano.ANOS.ToString()
    
    New-Item -Name "1 SEMESTRE" -ItemType Directory
    Set-Location '1 SEMESTRE'
    Add-Content pode_apagar.txt ok
    Set-Location ..\
    
    New-Item -Name "2 SEMESTRE" -ItemType Directory
    Set-Location '2 SEMESTRE'
    Add-Content pode_apagar.txt ok 
    Set-Location ..\..\
}

Set-Location ..\..\

Set-Location 'RNC'
foreach ($ano in $anos) {
    New-Item -Name $ano.ANOS -ItemType Directory
    Set-Location $ano.ANOS.ToString()
    New-Item -Name "UNIDADES" -ItemType Directory
    Set-Location 'UNIDADES'
    foreach ($item in $unidades) {
        New-Item -Name $item.NOME -ItemType Directory
        $d = ".\" + $item.NOME.ToString() + "\pode_apagar.txt" 
        Add-Content $d ok
    }
    Set-Location ..\..\
}
Set-Location ..\

Set-Location 'TREINAMENTO'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES'
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    $d = ".\" + $item.NOME.ToString() + "\pode_apagar.txt" 
    Add-Content $d ok
}

Set-Location ..\..\..\
#endregion ESTRUTURA QUALIDADE

#region ESTRUTURA RH
New-Item -Name "RH" -ItemType Directory
Set-Location "RH"
foreach ($item in $rh) {
    New-Item -Name $item.NOME -ItemType Directory
    Add-Content pode_apagar ok
}

Set-Location 'ASO'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

Set-Location 'ATESTADO'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

Set-Location 'CERTIFICADO DE TREINAMENTO'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

Set-Location 'COLABORADORES'
New-Item -Name "ATIVOS" -ItemType Directory
New-Item -Name "INATIVOS" -ItemType Directory
Set-Location .\'ATIVOS'
New-Item -Name "GESTORES PJ" -ItemType Directory
$d = ".\" + "GESTORES PJ" + "\pode_apagar.txt"
Add-Content .\$d ok

New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

Set-Location .\'INATIVOS'
New-Item -Name "GESTORES PJ" -ItemType Directory
$d = ".\" + "GESTORES PJ" + "\pode_apagar.txt"
Add-Content .\$d ok

New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\..\

Set-Location 'FERIAS'
New-Item -Name "PREVISAO DE FERIAS" -ItemType Directory
$d = ".\" + "PREVISAO DE FERIAS" + "\pode_apagar.txt"
Add-Content .\$d ok
New-Item -Name "RECIBO" -ItemType Directory
$d = ".\" + "RECIBO" + "\pode_apagar.txt"
Add-Content .\$d ok
Set-Location ..\

Set-Location 'INFORME DE RENDIMENTO'
New-Item -Name "COLABORADORES" -ItemType Directory
Set-Location .\'COLABORADORES'
New-Item -Name "ATIVOS" -ItemType Directory
New-Item -Name "INATIVOS" -ItemType Directory
Set-Location .\'ATIVOS'
foreach ($ano in $anos) {
    New-Item -Name $ano.ANOS -ItemType Directory
    Add-Content pode_apagar.txt ok
}
Set-Location ..\
Set-Location .\'INATIVOS'
foreach ($ano in $anos) {
    New-Item -Name $ano.ANOS -ItemType Directory
    Add-Content pode_apagar.txt ok
}
Set-Location ..\..\..\

Set-Location 'TERMOS DE RESPONSABILIDADE'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\

Set-Location ..\..\
#endregion ESTRUTURA RH

#region ESTRUTURA SEGURANCA TRABALHO
New-Item -Name "SEGURANCA DO TRABALHO" -ItemType Directory
Set-Location 'SEGURANCA DO TRABALHO'
foreach ($item in $seg) {
    New-Item -Name $item.NOME -ItemType Directory
    Add-Content pode_apagar ok
}

Set-Location 'ASO'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

Set-Location 'CERTIFICADOS'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

Set-Location 'DOCUMENTACAO'
New-Item -Name "CLIENTES" -ItemType Directory
Set-Location 'CLIENTES' 
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

New-Item -Name "FAP" -ItemType Directory
Set-Location 'FAP' 
foreach ($item in $anos) {
    New-Item -Name $item.ANOS -ItemType Directory
    Set-Location $item.ANOS.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\

New-Item -Name "PPP" -ItemType Directory
Set-Location 'PPP' 
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

Set-Location 'PROGRAMAS DE SEGURANCA' 
New-Item -Name "FORMULARIOS" -ItemType Directory
Set-Location 'FORMULARIOS'
Add-Content pode_apagar ok
Set-Location ..\

New-Item -Name "PROGRAMA" -ItemType Directory
Set-Location 'PROGRAMA'
foreach ($item in $anos) {
    New-Item -Name $item.ANOS -ItemType Directory
    Set-Location $item.ANOS.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\

#endregion ESTRUTURA SEGURANCA TRABALHO

#region ESTRUTURA SUPRIMENTOS
New-Item -Name "SUPRIMENTOS" -ItemType Directory
Set-Location "SUPRIMENTOS"
foreach ($item in $suprimentos) {
    New-Item -Name $item.NOME -ItemType Directory
    #Add-Content pode_apagar.txt ok
}

Set-Location 'MOVIMENTO DE ENTRADA'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location .\UNIDADES\
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        foreach ($mes in $meses) {
            New-Item -Name $mes.MESES -ItemType Directory
            Set-Location $mes.MESES
            
            New-Item -Name "SERVICO" -ItemType Directory
            Set-Location .\SERVICO
            
            New-Item -Name "ENTRADA" -ItemType Directory
            Set-Location .\ENTRADA
            
            New-Item -Name "PDF" -ItemType Directory
            Add-Content .\PDF\pode_apagar.txt ok
            
            New-Item -Name "XML" -ItemType Directory
            Add-Content .\XML\pode_apagar.txt ok

            Set-Location ..\..\

            New-Item -Name "PRODUTO" -ItemType Directory
            Set-Location .\PRODUTO
            
            New-Item -Name "ENTRADA" -ItemType Directory
            Set-Location .\ENTRADA
            
            New-Item -Name "PDF" -ItemType Directory
            Add-Content .\PDF\pode_apagar.txt ok
            
            New-Item -Name "XML" -ItemType Directory
            Add-Content .\XML\pode_apagar.txt ok

            Set-Location ..\..\..\
        }
        Set-Location ..\
    }    
    Set-Location ..\
}
Set-Location ..\..\

Set-Location 'ORCAMENTO'
New-Item -Name "UNIDADES" -ItemType Directory
Set-Location 'UNIDADES' 
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME.ToString()
    Add-Content pode_apagar.txt ok
    Set-Location ..\
}
Set-Location ..\..\

Set-Location 'PEDIDO DE COMPRA'
New-Item -Name "PRODUTO" -ItemType Directory
New-Item -Name "SERVICO" -ItemType Directory

Set-Location .\PRODUTO
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        foreach ($mes in $meses) {
            New-Item -Name $mes.MESES -ItemType Directory
            Set-Location $mes.MESES
            Add-Content pode_apagar.txt ok
            Set-Location ..\
        }
        Set-Location ..\
    }
    Set-Location ..\
}
Set-Location ..\

Set-Location .\SERVICO
foreach ($item in $unidades) {
    New-Item -Name $item.NOME -ItemType Directory
    Set-Location $item.NOME
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        foreach ($mes in $meses) {
            New-Item -Name $mes.MESES -ItemType Directory
            Set-Location $mes.MESES
            Add-Content pode_apagar.txt ok
            Set-Location ..\
        }
        Set-Location ..\
    }
    Set-Location ..\
}
Set-Location ..\..\..\

#endregion ESTRUTURA SUPRIMENTOS