N = gets.to_i
X = gets.chomp
ones = X.count("1")
XINT = X.to_i(2)

$h = {}
$h[0] = 0

def f(x)
  return $h[x] unless $h[x].nil?

  return $h[x] = 1 + f(x % x.to_s(2).count("1"))
end

(1...2*10**5).each{|n| f(n)}

N.downto(1) do |i|
  xi = XINT ^ 2**(i-1)
  newones = ones + (X[N-i] == "0" ? 1 : -1)
  puts ($h[xi % newones] + 1) if xi != 0
  puts 1 if xi == 0
end
