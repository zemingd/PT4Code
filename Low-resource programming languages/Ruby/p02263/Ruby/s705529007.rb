inp = gets.chomp.split
l = []

inp.each { |q|
    if q == "+" || q == "*" || q == "-"
      b = l.pop
      a = l.pop
      l << eval("#{a} #{q} #{b}")
    else
      l << q.to_i
    end
}
puts l[0]

