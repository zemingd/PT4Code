require 'prime'
io = STDIN
n=io.gets.to_i

ct=0
(1..n).each do |i|
  next if i.even?
  pd=i.prime_division
  if pd.size==3 || pd.map{|ar|ar[1]}.sort==[1,3]
    ct+=1
  end
end
p ct
