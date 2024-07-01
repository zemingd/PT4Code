N = gets.to_i
Xs = gets.split.map(&:to_i)

a = Xs.inject(0) {|result, item|
    result + item**2
  }
b = Xs.inject(&:+)

c = (b.to_f / N)

p [c.floor, c.ceil].map{|n| N*(n**2) - 2*b*n + a}.min
