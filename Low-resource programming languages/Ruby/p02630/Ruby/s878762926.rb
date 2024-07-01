N = gets.to_i
A = gets.split.map(&:to_i)
s = 0
count = Hash.new{0}
A.each{|a|
    count[a] += 1
    s += a
}
Q = gets.to_i
Q.times{
    b, c = gets.split.map(&:to_i)
    s += (c - b) * count[b]
    count[c] += count[b]
    count.delete(b)
    puts s
}
