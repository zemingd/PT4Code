require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
xs = gets.chomp

xi = xs.to_i(2)
init_count = 0
xs.each_char do |c|
  init_count += 1 if c == '1'
end

xs_init = xs.dup
xi_init = xi

# p [xi_init, xs_init]
n.times do |i|
  if xs_init[i] == '1'
    xi = xi_init - (1 << (n-i-1))
    count = init_count - 1
  else
    xi = xi_init + (1 << (n-i-1))
    count = init_count + 1
  end
  # p [i, [xi, xi.to_s(2)], count]
  if xi == 0
    puts 0
    next
  end

  xi = xi % count
  xs = xi.to_s(2)

  ans = 1
  while xi > 0
    count = 0
    xs.each_char do |c|
      count += 1 if c == '1'
    end
    xi = xi % count
    xs = xi.to_s(2)
    ans += 1
  end

  puts ans
end
