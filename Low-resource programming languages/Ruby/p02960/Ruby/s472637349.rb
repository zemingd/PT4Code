@s = gets.chomp.to_s
@s_array = @s.split('').reverse
@n = @s.length
@dp = []

# @param Int
# @return Array
def remainders_for_question(i)
  output = []
  digit = 10**i
  0.upto(9) do |j|
    remeinder = digit*j%13
    @dp[i - 1].each_with_index do |v, idx|
      k = (remeinder + idx)%13
      next if v.nil?
      if output[k].nil?
        output[k] = v
      else
        output[k] += v
      end
    end if i > 0
    output[remeinder] = 1 if i == 0
  end
  return output
end

# @param Int, Int
# @return Array
def remainders_for_number(i, target)
  output = []
  digit = 10**i
  remeinder = (digit*target)%13
  @dp[i - 1].each_with_index do |v, idx|
    k = (remeinder + idx)%13
    if output[k].nil?
      output[k] = v
    else
      output[k] += v
    end
  end if i > 0
  output[remeinder] = 1 if i == 0
  return output
end


0.upto(@n - 1) do |i|
  target = @s_array[i]
  if target == '?'
    @dp[i] = remainders_for_question(i)
  else
    @dp[i] = remainders_for_number(i, target.to_i)
  end
end

# print @dp
print (@dp[@n - 1][5].to_i)%(10**9+7)
