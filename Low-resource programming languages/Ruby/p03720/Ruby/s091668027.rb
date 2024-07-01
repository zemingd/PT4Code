N,M = gets.chomp.split(" ").map(&:to_i)
a = M.times.map { gets.chomp.split(" ").map(&:to_i)}

a.flatten!

(1..N).each { |c|
  puts a.count(c)
}
