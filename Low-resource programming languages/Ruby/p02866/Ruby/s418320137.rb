MOD = 998244353
N = gets.to_i
D = gets.split.map(&:to_i)

list = Hash.new(0)

D.each do |d|
  list[d] += 1
end

if D[0] != 0
  puts 0
  exit
end

ans = 1

1.upto(D.max) do |d|
  n = list[d]

  if n == 0
    ans = 0
    break
  else
    ans = (ans * (list[d-1] ** n)) % MOD
  end
end

puts ans % MOD
