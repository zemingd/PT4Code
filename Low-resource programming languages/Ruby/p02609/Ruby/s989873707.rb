N = gets.chomp.to_i
X = gets.chomp

N.times do |i|
  chars = X.chars
  chars[i] = { '0' => '1', '1' => '0' }[chars[i]]
  x = chars
  flag = true
  count = 0
  while flag do
    one_count = x.select { |a| a == '1' }.length
    amari = x.join.to_i(2) % one_count
    count = count + 1
    if amari == 0
      flag = false
    else
      x = amari.to_s(2).chars
    end
  end
  puts count
end