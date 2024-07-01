w = gets.chomp
ws = ['Sunny', 'Cloudy', 'Rainy', 'Sunny']
ws.each_with_index do |s, i|
  if w == s
    puts ws[i + 1]
    break
  end
end