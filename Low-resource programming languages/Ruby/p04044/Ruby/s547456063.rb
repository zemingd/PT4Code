n, l = gets.chomp.split.map(&:to_i)
s = []
n.times{
    s.push(gets.chomp)
}
s.sort!
puts s.join
