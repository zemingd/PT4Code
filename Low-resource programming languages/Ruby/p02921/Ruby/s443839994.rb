forecast = gets.chomp.split("")
result = gets.chomp.split("")

hits = forecast.zip(result).count do |f, r|
  f == r
end

p hits
