N = gets.chomp.to_i
X = gets.chomp
X_10 = X.to_i(2)

p = X.count('1')
p_p = p + 1
p_m = p - 1
amari_p = X_10 % p_p
amari_m = p_m == 0 ? 0 : X_10 % p_m

N.times do |i|
  if X_10[N-1-i] == 0
    amari = (amari_p + 2.pow(N - 1 - i, p_p)) % p_p
  else
    if p_m == 0
      puts 0
      next
    end
    amari = (amari_m - 2.pow(N - 1 - i, p_m)) % p_m
  end
  count = 1

  while amari != 0 do
    amari = amari % amari.to_s(2).count('1')
    count = count + 1
  end

  puts count
end