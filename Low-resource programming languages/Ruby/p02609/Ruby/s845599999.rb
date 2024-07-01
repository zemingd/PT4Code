N = gets.chomp.to_i
X = gets.chomp
X_chars = X.chars
X_10 = X.to_i(2)

p = X_chars.select { |a| a == '1' }.length
p_p = p + 1
p_m = p - 1

N.times do |i|
  if X_chars[i] == '0'
    amari = (X_10 + 2 ** (N - 1 - i)) % p_p
  else
    if p_m == 0
      puts 0
      next
    end
    amari = (X_10 - 2 ** (N - 1 - i)) % p_m
  end
  count = 1

  if amari != 0
    flag = true
    while flag do
      amari = amari % amari.to_s(2).chars.select { |a| a == '1' }.length
      count = count + 1
      if amari == 0
        flag = false
      end
    end
  end

  puts count
end