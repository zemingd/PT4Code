k = gets.to_i
a, b = gets.chomp.split.map(&:to_i)

f = false
a.upto(b) do |n|
  if n % k == 0
    f = true
    break
  end
end

if f
  puts "OK"
else
  puts "NG"
end