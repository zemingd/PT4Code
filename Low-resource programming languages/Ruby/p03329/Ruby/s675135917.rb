n = gets.to_i
@memo = {}

def countCheck(remain)
  return 0 if remain == 0
  return @memo[remain] if @memo[remain]
  min = 1000000000
  sixVal = 1
  nineVal = 1
  while sixVal <= remain do
    min = [min,1+countCheck(remain-sixVal)].min
    sixVal *= 6
  end
  while nineVal <= remain do
    min = [min,1+countCheck(remain-nineVal)].min
    nineVal *= 9
  end

  @memo[remain] = min
end

puts countCheck(n)
