A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

ans = 0

a=0
while a <= A
  b = 0
  while b <= B
    c = 0
    while c <= C
      if (a*500 + b*100 + c*50 == X)
        ans += 1
      end
      c += 1
    end
    b += 1
  end
  a += 1
end

puts ans
