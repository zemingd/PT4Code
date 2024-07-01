n = gets.to_i
as = gets.chomp.split(" ").map(&:to_i)
q = gets.to_i
bs = []
cs = []
q.times do |i|
  bs[i], cs[i] = gets.chomp.split(" ").map(&:to_i)
end

q.times{ |i|
  as = as.map{|a|
    if a == bs[i]
      cs[i]
    else
      a
    end
  }
  puts as.sum
}
