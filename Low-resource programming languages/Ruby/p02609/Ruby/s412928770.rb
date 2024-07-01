$fn = Hash.new

def f(n)
  return $fn[n] if !$fn[n].nil?

  popcorn = n.to_s(2).split("").filter{|i| i == '1'}.length
  a = n % popcorn
  if a == 0
    $fn[n] = 1
  else
    $fn[n] = f(a) + 1
  end
  $fn[n]
end

n = gets.to_i
X = gets.chomp.split("")

(0...n).each do |i|
  x = Marshal.load(Marshal.dump(X))
  x[i] = x[i] == '1' ? '0' : '1'
  p f(x.join.to_i(2))
end