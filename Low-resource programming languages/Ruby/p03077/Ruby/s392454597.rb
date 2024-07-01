input = $stdin.readlines
input.map!{|a| a.chomp("\n").to_i}
n = input[0]
input.delete_at(0)

print n / input.min + 5