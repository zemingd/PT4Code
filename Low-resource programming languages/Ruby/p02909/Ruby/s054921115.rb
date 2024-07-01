s = gets.strip
day = ["Sunny", "Cloudy", "Rainy"]
day.each_with_index do |d, i|
  if d == s
    if i == 2
      puts "Sunny"
    else
      puts day[i + 1]
    end
  end
end