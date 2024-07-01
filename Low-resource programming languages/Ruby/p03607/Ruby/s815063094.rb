N = gets.to_i
A = []

N.times do
  
  a = gets.to_i
  if A.include?(a)
    A.delete(a)
  else
    A.push(a)
  end
end

puts A.size