X = gets.chomp.to_i

def calc_b(a)
  b5 = (a**5 - X)
  if b5 >= 0
    b5.pow(1.0/5).to_i
  else
    (-b5).pow(1.0/5).to_i * -1
  end
end

def val(a, b)
  a**5 - b**5
end

a = X.pow(1.0/5).to_i
b = calc_b(a)

until (v = val(a, b)) == X
  if v > X
    a -= 1
  else
    a += 1
  end
  b = calc_b(a)
end

puts [a, b].join(" ")
