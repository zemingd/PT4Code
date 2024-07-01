n, m = gets.chomp.split.map(&:to_i)
h = Array.new(m, 0)
n.times{
    arr = gets.chomp.split.map(&:to_i)
    arr[1..-1].each{|x| h[x - 1] += 1}
}
puts h.count(n)