posicaoImagemY = 400
display.setDefault( "background", 1, 1,1 )
local teclaDo = display.newImage("imagens/tecla_1.gif", 100, posicaoImagemY)
local teclaRe = display.newImage("imagens/tecla_2.gif", 219, posicaoImagemY)
local teclaMi = display.newImage("imagens/tecla_3.gif", 338 , posicaoImagemY)
local teclaFa = display.newImage("imagens/tecla_4.gif", 455, posicaoImagemY)
local teclaSol = display.newImage("imagens/tecla_5.gif", 574, posicaoImagemY)
local teclaLa = display.newImage("imagens/tecla_6.gif", 700, posicaoImagemY)
local teclaSi = display.newImage("imagens/tecla_7.gif", 832, posicaoImagemY)
local teclaDo2 = display.newImage("imagens/tecla_8.gif", 965, posicaoImagemY)

notaDo = audio.loadStream("sons/do8.mp3")
notaRe = audio.loadStream("sons/re.wav")

function tocarNoda(event)
	if (event.target == teclaDo) then
    	audio.play(notaDo);
    end
    if (event.target == teclaRe) then
    	audio.play(notaRe);
    end
    if (event.target == teclaMi) then
    	print("não implementado")
    end
    if (event.target == teclaFa) then
    	print("não implementado")
    end
    if (event.target == teclaSol) then
    	print("não implementado")
    end
    if (event.target == teclaLa) then
    	print("não implementado")
    end
    if (event.target == teclaSi) then
    	print("não implementado")
    end
    if (event.target == teclaDo2) then
    	print("não implementado")
    end
end

teclaDo:addEventListener("touch", tocarNoda)
teclaRe:addEventListener("touch", tocarNoda)
teclaMi:addEventListener("touch", tocarNoda)
teclaFa:addEventListener("touch", tocarNoda)
teclaSol:addEventListener("touch", tocarNoda)
teclaLa:addEventListener("touch", tocarNoda)
teclaSi:addEventListener("touch", tocarNoda)
teclaDo2:addEventListener("touch", tocarNoda)


