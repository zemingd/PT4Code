n, m = gets.split.map(&:to_i)

na = Array.new(31, 0)

n.times.each {|i|
    ka = gets.split.map(&:to_i)
    k = ka[0]
    a = ka[1..ka.length-1]
    a.each{|j|
        na[j] += 1
    }
}
puts na.select{|i|i==n}.count
