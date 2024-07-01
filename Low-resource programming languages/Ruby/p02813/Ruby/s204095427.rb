n = gets.chomp.to_i
p = gets.chomp.split(" ").join()
q = gets.chomp.split(" ").join()

items =[]
n.times do |i|
  items << (i+1).to_s
end

count = 0
pc = -1
qc = -1
items.permutation(n) do |a|
  str = a.join()
  pc = count if str == p
  qc = count if str == q
  break if pc >= 0 && qc >= 0
  count +=1
end

puts (qc-pc).abs