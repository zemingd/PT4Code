lines = []
while line = gets
    lines << line.chomp.split(' ')
end

N = lines[0][0].to_i
K = lines[0][1].to_i
s = lines[1][0]

s[K-1] = s[K-1].downcase

puts s