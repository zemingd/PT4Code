n = gets.to_i
a = gets.split.map(&:to_i)

(1..n).each do |x|
    puts a.count(x)
end