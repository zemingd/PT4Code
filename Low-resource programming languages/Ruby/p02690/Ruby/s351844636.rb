def f(n5)
  r = 0
  loop do
    r += 1
    r5 = r ** 5
    if r5 == n5
      return r
    elsif r5 > n5
      return nil
    end
  end
end

X = $stdin.gets.to_i
a = 0
b = 0
loop do
  b5 = a ** 5 - X
  if b5 == 0
    b = 0
    break
  elsif b5 > 0
    if b = f(b5)
      break
    end
  else # b5 < 0
    if mb = f(-b5)
      b = -mb
      break
    end
  end
  a += 1
end
puts "#{a} #{b}"
