n = gets.to_i
s = gets.chomp
popcount = s.count("1")
x0 = s.to_i(2) % (popcount + 1)
x1 = 0
if popcount != 1
  x1 = s.to_i(2) % (popcount - 1)
end
for i in 0..n-1
  if s[i] == "0"
    x = x0 + 2 ** (n-1-i) % (popcount + 1)
    x = x % (popcount + 1)
    count = 1
    while x != 0
      x = x % x.to_s(2).count("1")
      count += 1
    end
    puts count
  else
    if popcount == 1
      puts 0
    else
      x = x1 - 2 ** (n-1-i) % (popcount - 1)
      x = x % (popcount - 1)
      count = 1
      while x != 0
        x = x % x.to_s(2).count("1")
        count += 1
      end
      puts count
    end
  end
end