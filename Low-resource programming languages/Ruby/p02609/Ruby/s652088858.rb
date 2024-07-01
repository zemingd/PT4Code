N = gets.to_i
X = gets.chomp

@m = {0 => 0, 1 => 1}
f = ->(n){@m[n] ||= f[n % n.to_s(2).count('1')] + 1}
x = X.to_i(2)
(0 ... N).each{|i| puts X[i] == '0' ? f[x + 2**(N - 1 - i)] : f[x - 2**(N - 1 - i)]}