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

notaDo = audio.loadStream("sons/do.wav")
notaRe = audio.loadStream("sons/re.wav")
notaMi = audio.loadStream("sons/mi.wav")
notaFa = audio.loadStream("sons/fa.wav")
notaSol = audio.loadStream("sons/sol.wav")
notaLa = audio.loadStream("sons/la.wav")
notaSi = audio.loadStream("sons/si.wav")
notaDo2 = audio.loadStream("sons/mi")

function tocarNota(event)
	if (event.target == teclaDo) then
    	audio.play(notaDo);
    end
    if (event.target == teclaRe) then
    	audio.play(notaRe);
    end
    if (event.target == teclaMi) then
    	audio.play(notaMi);
    end
    if (event.target == teclaFa) then
    	audio.play(notaFa);
    end
    if (event.target == teclaSol) then
    	audio.play(notaSol)
    end
    if (event.target == teclaLa) then
    	audio.play(notaLa);
    end
    if (event.target == teclaSi) then
    	audio.play(notaSi);
    end
    if (event.target == teclaDo2) then
    	print("não implementado")
    end
end

teclaDo:addEventListener("touch", tocarNota)
teclaRe:addEventListener("touch", tocarNota)
teclaMi:addEventListener("touch", tocarNota)
teclaFa:addEventListener("touch", tocarNota)
teclaSol:addEventListener("touch", tocarNota)
teclaLa:addEventListener("touch", tocarNota)
teclaSi:addEventListener("touch", tocarNota)
teclaDo2:addEventListener("touch", tocarNota)


