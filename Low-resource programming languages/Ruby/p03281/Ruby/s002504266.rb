require 'prime'
io = STDIN
n=io.gets.to_i

ct=0
(1..n).each do |i|
  next if i.even?
  pd=i.prime_division
  ct+=1 if pd.size == 3
end
p ct
