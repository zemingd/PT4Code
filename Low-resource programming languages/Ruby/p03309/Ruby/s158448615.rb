N = gets.to_i
A = gets.split.map(&:to_i)

if N.odd?
  center = N / 2
  array = ((A.sort[center] - center)..(A.sort[center] + center)).to_a
  ansArray = A.map.with_index {|a, i| (a - array[i]).abs}
  puts ansArray.inject(:+)
else
  centerL = N / 2 - 1
  arrayL = ((A.sort[centerL] - centerL)..(A.sort[centerL] + centerL + 1)).to_a 
  ansArrayL = A.map.with_index {|a, i| (a - arrayL[i]).abs}

  centerR = N / 2
  arrayR = ((A.sort[centerR] - centerR)..(A.sort[centerR] + centerR - 1)).to_a
  ansArrayR = A.map.with_index {|a, i| (a - arrayR[i]).abs}

  sumL = ansArrayL.inject(:+)
  sumR = ansArrayR.inject(:+)
  ans = sumL < sumR ? sumL : sumR
  puts ans
end
