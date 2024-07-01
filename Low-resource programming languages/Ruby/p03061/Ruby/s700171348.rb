#!/usr/bin/env ruby

@n = STDIN.gets.chomp.to_i
@nums = STDIN.gets.chomp.split(' ').map &:to_i

@l_gcd_cache =  []
@r_gcd_cache = []

def gcd(a, b)
  if a == 0
    return b
  elsif b == 0
    return a
  end

  if b > a
    tmp = b
    b = a
    a = tmp
  end

  if a % b == 0
    return b
  else
    gcd(b, a % b)
  end
end

def l_gcd(i)
  if i == 0
    return 0
  end

  if not @l_gcd_cache[i]
    @l_gcd_cache[i] = gcd(l_gcd(i-1), @nums[i-1])
  end

  @l_gcd_cache[i]
end

def r_gcd(i)
  if i == @n - 1
    return 0
  end

  if not @r_gcd_cache[i]
    @r_gcd_cache[i] = gcd(@nums[i+1], r_gcd(i+1))
  end

  @r_gcd_cache[i]
end

answers = []
0.upto(@n-1).each do |i|
  ans1 = l_gcd(i)
  ans2 = r_gcd(i)
  answers[i] = gcd(ans1, ans2)
end

puts answers.max
