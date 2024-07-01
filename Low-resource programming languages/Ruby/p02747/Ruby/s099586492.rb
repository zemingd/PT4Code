# N = gets.chomp.to_i
# A, B, C = gets.chomp.split.map(&:to_i)
S = gets.chomp.chars

n = S.size
if (n % 2) == 1
  print "No\n"
else
  ans = true
  0.upto(n-1).each do |i|
    if (i % 2 == 0)
      if S[i] != 'h'
        ans = false
        break
      end
    else # i%2 == 1
      if S[i] != 'i'
        ans = false
        break
      end
    end
  end
  if ans
    print "Yes\n"
  else
    print "No\n"
  end
end

