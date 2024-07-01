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

    x_suji = x.join.to_i(2)
    if x_suji == 0
      flag = false
      next
    end

    amari = one_count == 0 ? 0 : x_suji % one_count

    count = count + 1
    if amari == 0
      flag = false
    else
      x = amari.to_s(2).rjust(N).chars
    end
  end

  puts count
end