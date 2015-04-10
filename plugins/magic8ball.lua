do

function run(msg, matches)
  local answers = {'Certamente','Decisamente si','Senza dubbio',
                  'Ovviamente','Ci puoi contare','Per come la vedo io, Si',
		  'Probabilmente','Sembra di Si','Si',
                  'I segni dicono di Si',
                  'Risposta non chiara prova di nuovo',
		   'Chiedimelo di nuovo più tardi',
                  'Meglio non chiederlo adesso',
		  'Non posso predirlo adesso',
                  'Concentrati e richiedimelo','Non ci contare',
                  'La mia risposta è no','Le mie fonti dicono di no',
		  'Sembra di no','No','Molto dubbiamente'}
  return answers[math.random(#answers)]
end

return {
  description = "Magic 8Ball",
  usage = "!magic8ball",
  patterns = {"^!magic8ball$"},
  run = run
}

end
