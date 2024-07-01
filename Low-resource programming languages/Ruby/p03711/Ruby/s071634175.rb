def f(a)
  n = a.size/3
  car, mid, cdr = a.each_slice(n).to_a
  car.sort!
  cdr.sort!.reverse!
  _sum = car.inject(0,:+) - cdr.inject(0, :+)
  (0..n).map{|border|
    sum = _sum
    ii = 0
    iii = 0
    mid.each_with_index{|v, i|
      if i < border
        sub = v - car[ii]
        if sub > 0
          sum += sub
          ii += 1
        end
      else
        sub = cdr[iii] - v
        if sub > 0
          sum += sub
          iii += 1
        end
      end
    }
    sum
  }.max
end

N = gets.to_i
A = gets.split.take(N*3).map(&:to_i)
p f(A)
