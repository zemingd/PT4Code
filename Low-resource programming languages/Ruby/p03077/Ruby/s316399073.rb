input = $stdin.readlines
input.map!{|a| a.chomp("\n").to_i}
n = input[0]
input.delete_at(0)
k =  n.to_f / input.min.to_f 

print k.ceil + 4