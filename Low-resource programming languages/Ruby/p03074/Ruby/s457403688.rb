n,k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
l = 0
r = -1
max = 0
zero = 0
pre = ""
while zero < k && r < n-1
  r += 1
  if s[r] == "1"
    if pre == "0"
      zero += 1
      if zero >= k
        while r < n-1
          if s[r+1] == "1"
            r += 1
          else
            break
          end
        end
      end
    end
  end
  pre = s[r]
end
if zero < k
  puts n
  exit
end
max = r - l + 1
pre = s[0]
while r < n-1
  l += 1
  if s[l] == "1" && pre == "0"
    nextzero = false
    pre = s[r]
    while !nextzero && r < n-1
      r += 1
      if s[r] == "1"
        if pre == "0"
          nextzero = true
          while r < n-1
            if s[r+1] == "1"
              r += 1
            else
              break
            end
          end
        end
      end
      pre = s[r]
    end
  end
  pre = s[l]
  max = [max,r-l+1].max
end
puts max
