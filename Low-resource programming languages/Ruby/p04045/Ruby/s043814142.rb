n, k = gets.split.map &:to_i
d = gets.split.map &:to_i
digits = [*0..9] - d
l = digits.size
x = [0]
val = ->x{ x.inject(0) { |s, i| s * 10 + digits[i] } }
while val[x] < n
  if (x.size-1).downto(0).all? { |j|
    x[j] += 1
    if x[j] == l
      x[j] = 0
    else
      false
    end
    }
    x.unshift 1
  end
end

p val[x]