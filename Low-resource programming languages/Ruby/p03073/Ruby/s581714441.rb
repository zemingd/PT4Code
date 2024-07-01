#a, b = gets.chomp.split(" ").map(&:to_i);
s = gets.chomp

count_e = 0
count_o = 0
i=0

s.each_char do |c|
  count_e += 1 if i%2 == 0 && c == '0'
  count_o += 1 if i%2 == 0 && c == '1'
  count_e += 1 if i%2 == 1 && c == '1'
  count_o += 1 if i%2 == 1 && c == '0'
  i+=1
end

puts [count_e, count_o].min