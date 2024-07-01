#!/usr/bin/env ruby

@n = gets.to_i
@nums = gets.split(' ').map &:to_i

@l_gcd_cache = []
@r_gcd_cache = []

def l_gcd(i)
  if i == 0
    return 0
  end

  if not @l_gcd_cache[i]
    @l_gcd_cache[i] = l_gcd(i-1).gcd(@nums[i-1])
  end

  @l_gcd_cache[i]
end

def r_gcd(i)
  if i == @n - 1
    return 0
  end

  if not @r_gcd_cache[i]
    @r_gcd_cache[i] = @nums[i+1].gcd(r_gcd(i+1))
  end

  @r_gcd_cache[i]
end

answers = []
0.upto(@n-1).each do |i|
  ans1 = l_gcd(i)
  ans2 = r_gcd(i)
  answers[i] = ans1.gcd(ans2)

#  puts "i = #{i}"
#  print "  "
#  p @l_gcd_cache
#  print "  "
#  p @r_gcd_cache
#  puts "  ans[#{i}] = #{answers[i]}"
end

puts answers.max
