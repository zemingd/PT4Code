n = gets.chomp.to_i
as = gets.chomp.split(' ').map{|s| s.to_i}

z = Array.new(n, 0)
count = 1
for a in as do
  z[a-1] = count
  count += 1
end

print z.join(' ')