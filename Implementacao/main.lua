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

notaDo = audio.loadSound("sons/do.wav")
notaRe = audio.loadSound("sons/re.wav")
notaMi = audio.loadSound("sons/mi.wav")
notaFa = audio.loadSound("sons/fa.wav")
notaSol = audio.loadSound("sons/sol.wav")
notaLa = audio.loadSound("sons/la.wav")
notaSi = audio.loadSound("sons/si.wav")
notaDo2 = audio.loadSound("sons/mi")

notas = {notaDo, notaRe, notaMi, notaFa, notaSol, notaLa, notaSi}

sequencia = {}
posicao = math.random (1,7)
velocidade = 2 * 1000


function tocarSequencia()
	  notaGerada = notas [math.random(1 , 7)]
	  sequencia [posicao] = notaGerada
	  audio.play (notaGerada)
	print (sequencia[posicao])
end
TM = timer.performWithDelay (velocidade, tocarSequencia, posicao)
function gerarSequencia()	
	--posicao = posicao + 1
	notaGerada = math.random(1 , 7)
	sequencia[posicao] = notas[notaGerada]
	print("---Posição: ",posicao)
	timer.performWithDelay(5000, tocarSequencia)
end

function tocarNota(event)
	if (event.target == teclaDo) then
    	audio.play(notaDo);
		tocarSequencia()
    end
    if (event.target == teclaRe) then
    	audio.play(notaRe);
		gerarSequencia()
    end
    if (event.target == teclaMi) then
    	audio.play(notaMi);
		gerarSequencia()
    end
    if (event.target == teclaFa) then
    	audio.play(notaFa);
		gerarSequencia()
    end
    if (event.target == teclaSol) then
    	audio.play(notaSol);
		gerarSequencia()
    end
    if (event.target == teclaLa) then
    	audio.play(notaLa);
		gerarSequencia()
    end
    if (event.target == teclaSi) then
    	audio.play(notaSi);
		gerarSequencia()
    end
    if (event.target == teclaDo2) then
    	print("não implementado")
		gerarSequencia()
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


