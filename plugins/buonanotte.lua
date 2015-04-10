do

 
function run(msg, matches)
  return "Buonanotte " .. matches[1] end return {
  description =" Manda a fanculo qualcuno",
  usage = "Dai la buonanotte a [name]", patterns = {
    "^Dai la buonanotte a (.*)$", "^dai la buonanotte a (.*)$"
  },
  run = run
}
end
