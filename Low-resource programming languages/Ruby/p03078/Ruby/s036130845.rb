X,Y,Z,K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).sort!
B = gets.chomp.split(" ").map(&:to_i).sort!
C = gets.chomp.split(" ").map(&:to_i).sort!

i = 0
d = []
A.each do |ax|
  B.each do |by|
    d[i] = ax + by
    i += 1
  end
end

d.sort!.reverse!
d.slice!(K-1, d.length) if d.length > K-1

j = 0
sum = []
d.each do |e|
  C.each do |cz|
    sum[j] = e + cz
    j += 1
  end
end

sum.sort!.reverse!

(0..K-1).each do |i|
  puts sum[i]
end