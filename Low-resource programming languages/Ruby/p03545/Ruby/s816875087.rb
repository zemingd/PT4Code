nu = gets.chomp.split("").map(&:to_i)
plus = [0, 0, 0]
count = 0
ans = 0
for i in 0..7
  count = i
  ans = nu[0]
  for j in 0..2
    plus[j] = count % 2
    count /= 2
  end
  for j in 0..2
    if plus[j] == 0
      ans -= nu[j + 1]
    else
      ans += nu[j + 1]
    end
  end
  if ans == 7
    print nu[0]
    if plus[0] == 0
      print "-"
    else
      print "+"
    end
    print nu[1]
    if plus[1] == 0
      print "-"
    else
      print "+"
    end
    print nu[2]
    if plus[2] == 0
      print "-"
    else
      print "+"
    end
    print nu[3]
    print "=7"
    exit
  end
end
