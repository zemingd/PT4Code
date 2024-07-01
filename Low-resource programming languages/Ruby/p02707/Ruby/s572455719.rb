N = gets.to_i
A = gets.split.map

(1..N).each do |x|
    puts A.count(x.to_s)
end
