require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
xs = gets.chomp

# n = 200000
# xs = '11010110111100001010' * 10000

xi = xs.to_i(2)
init_count = xs.count('1')

xi_init = xi
xs_init = xs.dup

# p [xi_init, xs_init]

xi_init_m1 = xi_init % (init_count-1)
xi_init_p1 = xi_init % (init_count+1)

anss=[]
hiku_m1 = 1
hiku_p1 = 1
n.times do |i|
  if xs_init[n-i-1] == '1'
    if init_count == 1
      anss.push 0
      next
    end
    count = init_count - 1
    # xi = xi_init_m1 - mod_kai(n-i-1, count)
    xi = xi_init_m1 - hiku_m1
  else
    count = init_count + 1
    # xi = xi_init_p1 + mod_kai(n-i-1, count)
    xi = xi_init_p1 + hiku_p1
  end

  # p [i, [xi, xi.to_s(2)], count]
  xi = (xi + count) % count

  xi %= count #=
  xs = xi.to_s(2)

  ans = 1
  while xi > 0
    count = xs.count('1')
    xi %= count #=
    xs = xi.to_s(2)
    ans += 1
  end
  hiku_m1 = hiku_m1 * 2 % (init_count-1)
  hiku_p1 = hiku_p1 * 2 % (init_count+1)
  anss.push ans
end

anss.reverse_each do |e|
  puts e
end
