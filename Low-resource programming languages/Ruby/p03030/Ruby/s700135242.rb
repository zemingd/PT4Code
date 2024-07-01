n = gets.chomp!.to_i
s_p = []
n.times do |i|
    s, p = gets.chomp!.split(" ")
    s_p << [s, p.to_i, i + 1]
end

s_p.sort! {|a, b| (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1]) }
s_p.each {|x, y, z|
  puts z
}
