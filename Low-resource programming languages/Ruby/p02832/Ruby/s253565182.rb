n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

tmp = 1
a_arr.each do |a|
  if a == tmp then
    tmp += 1
  end
end

if tmp == 1 then
  puts -1
else
  puts a_arr.length - tmp + 1
end
