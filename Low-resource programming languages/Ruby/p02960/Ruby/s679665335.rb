@s = gets.chomp.to_s
@s_array = @s.split('').reverse
@n = @s.length
@dp = [0] * 13

# @param Int
# @return Array
def for_question(i)
  digit = 10**i
  newmod = [0] * 13

  (0..9).each do |h|  
    m = digit*h%13
    13.times do |j|
      newmod[(j+m)%13] += @dp[j]
    end
  end
  @dp = newmod
end

# @param Int, Int
# @return Array
def for_number(i, target)
  m = ((10**(i%13))*target)%13
  newmod = [0] * 13
  13.times do |j|
    newmod[(j + m) % 13] = @dp[j]
  end
  @dp = newmod
end

def first_step(target)
  if target == "?"
    0.upto(9) do |i|
      @dp[i] = 1
    end
  else
    @dp[target.to_i] = 1
  end
end

0.upto(@n - 1) do |i|
  target = @s_array[i]
  if i == 0
    first_step(target)
  elsif target == '?'
    for_question(i)
  else
    for_number(i, target.to_i)
  end
end

# print @dp
print (@dp[5].to_i)%(10**9+7)
