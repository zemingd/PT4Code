N, K = gets.split.map(&:to_i)
Hs = readlines.map(&:to_i)

puts Hs.sort.each_cons(K).map{|a| a.last - a.first}.min