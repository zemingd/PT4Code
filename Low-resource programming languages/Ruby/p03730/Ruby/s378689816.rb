a,b,c = gets.chomp.split.map(&:to_i)
s = []

1.upto(b) do |i|
    s << a*i % b
end

puts (s.include? c) ? 'YES' : 'NO'
