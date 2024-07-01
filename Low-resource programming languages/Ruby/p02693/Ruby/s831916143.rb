A, B, N = gets.chomp.split.map(&:to_i)
a = [0]

(1..N).each do |i|
    a << (A*i)/B - A*(i/B)
end

puts a.max
