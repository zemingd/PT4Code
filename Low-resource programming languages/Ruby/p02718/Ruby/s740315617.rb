attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N, M = attrs.shift
A = attrs.shift
sum = A.inject(&:+)
favored = 0
A.each {|a|
  favored += 1 if a >= (sum / (4.0 * M))
}
if favored >= M then
  puts "Yes"
else
  puts "No"
end