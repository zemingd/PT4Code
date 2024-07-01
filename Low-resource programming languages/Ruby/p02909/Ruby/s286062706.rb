s = gets.chomp
ans = case s
      when "Sunny"
        "Cloudy"
      when "Cloudy"
        "Rainy"
      else
        "Sunny"
      end
puts ans