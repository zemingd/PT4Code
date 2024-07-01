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

a = 1
b = calc_b(a)

until (v = val(a, b)) == X
  a += 1
  b = calc_b(a)
end

puts [a, b].join(" ")
