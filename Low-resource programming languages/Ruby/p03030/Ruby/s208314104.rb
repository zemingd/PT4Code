N = gets.to_i
S, P= N.times.map{ gets.strip.split }.transpose
P.map!(&:to_i)

result = []
for var in  S.uniq.sort do
    foo = P.select{ |x| S[P.index(x)] == var }.sort.reverse
    foo.each{ |y| result.push(y) }
end

result.each do |z|
    puts P.index(z) + 1
end