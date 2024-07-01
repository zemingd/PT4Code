N = gets.to_i
A = gets.split.map(&:to_i)

if N.odd?
  center = N / 2
  array = ((A[center] - center)..(A[center] + center)).to_a
  ansArray = A.map.with_index {|a, i| (a - array[i]).abs}
  puts ansArray.inject(:+)
else
  centerL = N / 2 - 1
  arrayL = ((A[centerL] - centerL)..(A[centerL] + centerL + 1)).to_a 
  ansArrayL = A.map.with_index {|a, i| (a - arrayL[i]).abs}

  centerR = N / 2
  arrayR = ((A[centerR] - centerR)..(A[centerR] + centerR - 1))
  ansArrayR = A.map.with_index {|a, i| (a - arrayR[i]).abs}

  sumL = ansArrayL.inject(:+)
  sumR = ansArrayR.inject(:+)
  ans = sumL < sumR ? sumL : sumR
  puts ans
end
