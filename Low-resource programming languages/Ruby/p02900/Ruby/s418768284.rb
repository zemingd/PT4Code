a,b = gets.chomp.split.map(&:to_i).sort

def prime?(n)
  return true if n == 2
  return false if n < 2 || n % 2 == 0
  step_flag = false
  current = 3
  while current <= Math.sqrt(n).to_i
    return false if n % current == 0
    current += step_flag ? 2 : 4
    step_flag = !step_flag
  end

  return true
end

ans = 1
array = []
(1..Math.sqrt(b).to_i).each do |i|
  if b % i == 0
    array << i if a % i == 0
    array << b / i if a % (b / i) == 0
  end
end

array.each do |i|
  if prime?(i)
    ans += 1
  end
end

puts ans
