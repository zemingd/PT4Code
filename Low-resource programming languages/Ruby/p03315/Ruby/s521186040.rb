string = gets.to_s

max = string.size
num = 0

for i in 0..max do
  if string.slice(i) == '+' then
    num += 1
  elsif string.slice(i) == '-' then
    num -= 1
  end
end

puts "#{num}\n"
