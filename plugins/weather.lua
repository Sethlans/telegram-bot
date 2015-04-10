do

local BASE_URL = "http://api.openweathermap.org/data/2.5"

function get_weather(location)
  print("Finding weather in ", location)
  local b, c, h = http.request(BASE_URL.."/weather?q=" .. location .. "&units=metric")
  local weather = json:decode(b)
  print("Weather returns", weather)
  local city = weather.name
  local country = weather.sys.country
  local temp = 'La temperatura a ' .. city .. ' (' .. country .. ')'
  temp = temp .. ' è di ' .. weather.main.temp .. '°C'
  conditions = 'Condizione corrente: ' .. weather.weather[1].description
  
  if weather.weather[1].main == 'Clear' then
    conditions = 'Il cielo è sereno ☀'
  elseif weather.weather[1].main == 'Clouds' then
    conditions = 'Ci sono delle nuvole ☁☁'
  elseif weather.weather[1].main == 'Rain' then
    conditions = 'Piove  ☔'
  elseif weather.weather[1].main == 'Thunderstorm' then
    conditions ='Temporale ☔☔☔☔'
  end

  return temp .. '\n' .. conditions
end

function run(msg, matches)
  if string.len(matches[1]) > 2 then 
    city = matches[1]
  else
    city = "Turin,IT"
  end
  return get_weather(city)
end

return {
  description = "weather in that city (Default Torino)", 
  usage = "!weather (city)",
  patterns = {"^!weather(.*)$"}, 
  run = run 
}

end
