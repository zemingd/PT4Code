a = gets.split(" ").map(&:to_i)
b = (a[0]..a[1]).each_with_object([]) {|n,r|
                if n.to_s ==  n.to_s.reverse
                                r.push(1)
                end
}
puts b.length