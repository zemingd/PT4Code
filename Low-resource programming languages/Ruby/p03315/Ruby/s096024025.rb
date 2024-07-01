s = gets.chomp
num = 0
s.each_char do |c|
  c == "+" ? num+=1 : num-=1
end

puts num