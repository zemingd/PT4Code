def f1(a)
  [a / (8/100r), (a + 1) / (8/100r)]
end

def f2(b)
  [b / (10/100r), (b + 1) / (10/100r)]
end

def find(a1, a2)
  bgn = [a1[0], a2[0]].max.ceil
  ed = [a1[1], a2[1]].min
  f = if ed == ed.floor
    bgn < ed
  else
    bgn <= ed.floor
  end
  f ? bgn : -1
end

a, b = gets.split.map(&:to_i)
puts find(f1(a), f2(b))