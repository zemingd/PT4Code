x = gets.to_i
def prime?(n)
  return true if n == 2 || n == 3
  return false if n < 2 || n % 2 == 0 || n % 3 == 0
  step_flag = true
  current = 5
  while current <= Math.sqrt(n).to_i
    return false if n % current == 0
    current += step_flag ? 2 : 4
    step_flag = !step_flag
  end

  return true
end

loop do
  if prime?(x)
    puts x
    break
  end
  x += 1
end