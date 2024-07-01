N = gets.chomp.to_i
X = gets.chomp

$result = 0

def popcount(str)
  c = str.count('1')
  c
end

def counting(n)
  return if n.zero?

  pc = popcount(n.to_s(2))

  fx = n % pc

  counting(fx)
  $result += 1
end

(0..N - 1).each do |i|
  $result = 0
  str = X.dup
  str[i] = if str[i] == '0'
             '1'
           else
             '0'
           end
  counting(str.to_i(2))
  puts $result
end