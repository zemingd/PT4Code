N = gets.to_i
A = gets.split

(1..N).each.with_index(1) do |x, i|
    puts A.count(i.to_s)
end
