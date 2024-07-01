a,b = gets.split.map &:to_i
2000.times do |i|
  if i*8/100 == a && i/10== b
    puts i
    exit
  end
end

puts -1