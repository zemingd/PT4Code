n, m, k = gets.strip.split.map(&:to_i)
a = gets.split(" ")
b = gets.split(" ")

count = 0

until k < a.first.to_i && k < b.first.to_i do
  if (a.first.to_i > b.first.to_i) then
    k -= b.shift.to_i
    count += 1
  else
    k -= a.shift.to_i
    count += 1
  end
end
  
puts count