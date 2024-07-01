n = gets.to_i
a = gets.split("\s").map(&:to_i)
count = 0
i = 1

a.each do |a_i|
  if a_i == i
    i += 1
    next
  end
  
  count += 1
end

if i == 1 || count == n
  p -1
else
  p count
end