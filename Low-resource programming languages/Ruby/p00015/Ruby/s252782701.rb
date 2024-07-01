gets.to_i.times do
  a = gets.chomp.split(//).reverse
  b = gets.chomp.split(//).reverse
  if a.length > 80 or b.length > 80
    puts "overflow"
  else
    a.push(*Array.new(80 - a.length,0))
    b.push(*Array.new(80 - b.length,0))
    result = []
    temp = 0
    80.times do |i|
      result.unshift((a[i].to_i + b[i].to_i + temp) % 10)
      temp = ((a[i].to_i + b[i].to_i + temp) / 10)
    end
    if temp == 0
      puts result.join.to_i
    else
      puts "overflow"
    end
  end
end