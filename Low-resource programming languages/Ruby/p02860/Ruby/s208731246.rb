N = gets.chomp.to_i
# A, B, C = gets.chomp.split.map(&:to_i)
S = gets.chomp.chars

def solve
  if N % 2 != 0
    print "No\n"
    return
  end
  # Now, N is odd

  ans = true
  0.upto(N/2 - 1).each do |i|
    if (S[i] != S[i + N/2])
      ans = false
      break
    end
  end

  if ans
    print "Yes\n"
  else
    print "No\n"
  end
end

solve
