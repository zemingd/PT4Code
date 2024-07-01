N = gets.to_i
ary = []
for i in 0..N-1 do
  a = gets.to_i
  if ary.include?(a) == true then
    ary.delete_if{|i| i == a }
  else
    ary.push(a)
  end
end
puts ary.size