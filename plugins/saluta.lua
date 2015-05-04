do

function run(msg, matches)
  return "Ciao, " .. matches[1]
end

return {
  description = "Saluta qualcuno", 
  usage = "say hello to [name]",
  patterns = {
    "^Saluta (.*)$",
    "^saluta (.*)$",
    "^Di ciao a (.*)$",
    "^di ciao a (.*)$", 
    "^Dì ciao a (.*)$",
    "^dì ciao a (.*)$"  }, 
  run = run 
}

end
