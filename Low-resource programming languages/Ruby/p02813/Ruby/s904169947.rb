n = gets.chomp.to_i
ps = gets.chomp.gsub(" ", "")
qs = gets.chomp.gsub(" ", "")
numbers = [*1..n].to_a
lst = numbers.permutation.collect {|a| a.join }.to_a
pindex = lst.index {|item| item == ps }
qindex = lst.index {|item| item == qs }
p (pindex-qindex).abs