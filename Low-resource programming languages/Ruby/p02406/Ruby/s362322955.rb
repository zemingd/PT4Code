def isdiv3 n
  if n % 3 == 0
    true
  else
    false
  end
end

def isinclude3 n
  while n != 0
    if n % 10 == 3
      return true
    else
      n /= 10
    end
  end
end

n = gets.to_i
for i in 1..n
  if isdiv3(i) || isinclude3(i)
    print " " + i.to_s
  end
end
print "\n"

