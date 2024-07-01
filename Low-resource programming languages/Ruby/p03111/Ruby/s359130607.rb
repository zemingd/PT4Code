N, A, B, C = gets.split.map(&:to_i)
l = N.times.map{gets.to_i}
INF = 9999999999

def bmb(a, b, c, n, l)
  if n < N
    adda = bmb(a+l[n], b, c, n+1, l) + (a == 0 ? 0 : 10)
    addb = bmb(a, b+l[n], c, n+1, l) + (b == 0 ? 0 : 10)
    addc = bmb(a, b, c+l[n], n+1, l) + (c == 0 ? 0 : 10)
    addno = bmb(a, b, c, n+1, l)
    return [adda, addb, addc, addno].min
  else
    if a * b * c == 0
      return INF
    else
      return (A-a).abs + (B-b).abs + (C-c).abs
    end
  end
end

puts bmb(0, 0, 0, 0, l)