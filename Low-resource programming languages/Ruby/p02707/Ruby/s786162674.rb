N = gets.to_i
A = gets.split.map {|item| item.to_i}

(1..N).each do |x|
    puts A.count(x)
end
