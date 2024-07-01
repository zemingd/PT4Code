def gcd(a,b)
    if a > b
      c = a
      d = b
    else
      c = b
      d = a
    end
    e = 0
    while c % d != 0
      e = c % d
      c = d
      d = e
    end
    return d
end

str = gets.split
A,B,C,D = str[0].to_i, str[1].to_i, str[2].to_i, str[3].to_i
CD = C*D
lcm = CD / gcd(C,D)
a = B/lcm - A/lcm
answer = a * (lcm - lcm/C - lcm/D + 1)
aa = A%lcm
bb = B%lcm
answer += bb-(bb/C)-(bb/D)
if aa != 0
    aa2 = aa-1
    answer -= aa2-(aa2/C)-(aa2/D)
end
puts answer