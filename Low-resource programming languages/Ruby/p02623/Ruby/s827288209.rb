n, m, k = gets.strip.split.map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

count = 0

until k < a.first && k < b.first do
  if (a.first > b.first) then
    k -= b.shift
    count += 1
  else
    k -= a.shift
    count += 1
  end
  
  a.push(Float::INFINITY) if a.length === 0
  b.push(Float::INFINITY) if b.length === 0
    
end
  
puts count