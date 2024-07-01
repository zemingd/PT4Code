def f(a)
  a.each_cons(2){|a,b|
    return false if a[-1] != b[0]
  }
  true
end

A = gets.split.take(3)
puts f(A) ? "YES" : "NO"