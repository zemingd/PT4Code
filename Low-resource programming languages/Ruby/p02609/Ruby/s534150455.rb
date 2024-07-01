N = gets.to_i
X = gets.to_i(2)

$memo = {
  0 => 0,
  1 => 1,
  2 => 1,
  3 => 2,
  4 => 1,
  5 => 2,
  6 => 1,
  7 => 2,
}

#$popcount = x.to_s(2).count("1")

def func(x)
  $memo[x] ||= begin
                 mod = x % x.to_s(2).count("1")
                 1 + func(mod)
               end
end

N.times{ |j|
  c = 1 << (N - 1 - j)
  x = X ^ c
  #puts "X, x: #{X.to_s(2)}, #{x.to_s(2)}"
  puts func(x)
}
