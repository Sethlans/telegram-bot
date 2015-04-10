do

 
function run(msg, matches)
  return "Vaffanculo " .. matches[1] end return {
  description =" Manda a fanculo qualcuno",
  usage = "manda a fanculo [name]", patterns = {
    "^Manda a fanculo(.*)$", "^manda a fanculo (.*)$"
  },
  run = run
}
end
