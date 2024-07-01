N = gets.chomp.to_i
X = gets.chomp
X_one_count = X.chars.select { |a| a == '1' }.length
X_chars = X.chars

f = { 0 => 0 }

N.times do |i|
  x_one_count = X_chars[i] == '0' ? X_one_count + 1 : X_one_count - 1

  chars = X_chars.dup
  chars[i] = { '0' => '1', '1' => '0' }[chars[i]]

  x = chars

  flag = true
  count = 0

  while flag do
    x_suji = x.join.to_i(2)

    if x_suji == 0
      flag = false
    else
      amari = x_one_count == 0 ? 0 : x_suji % x_one_count
  ##    puts "#{x_one_count}:#{amari}"

#      binding.irb
      if !f[amari].nil?
        count = count + f[amari] + 1
        flag = false
      else
        count = count + 1
        if amari == 0
          flag = false
          f[x_suji] = count
        else
          x_ = amari.to_s(2)
          x_one_count = x_.chars.select { |a| a == '1' }.length
          x = x_.rjust(N, '0').chars
  #        puts x.join
   #       puts flag
        end
      end
    end
  end

  puts count
end