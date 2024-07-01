def prime?(n)
  return false if n < 2
  return true  if n == 2 or n == 3
  return false if (n % 2).zero? or (n % 3).zero?
  i, step = 5, 2
  guard = Math.sqrt(n).to_i
  while i <= guard
    return false if (n % i).zero?
    i += step
    step = 6 - step
  end
  true
end

def action(n)
  return n if prime?(n)
  if n.even?
    action(n+1)
  else
    action(n+2)
  end
end

x = gets.chop.to_i

print action(x)