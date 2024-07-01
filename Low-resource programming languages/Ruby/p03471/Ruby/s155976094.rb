def s()
  gets()
end
def i()
  gets.to_i
end
def li()
  gets.split.map(&:to_i)
end
def ili()
  n = gets.to_i
  as = gets.split.map(&:to_i)
  [n, as]
end

n, y = li()

man = y/10000
gosen = (y- man*10000)/5000
sen = (y- man*10000-gosen*5000)/1000
min = (man+gosen+sen)

if n == min
  puts [man, gosen, sen].join(" ")
elsif n < min
  puts [-1, -1, -1].join(" ")
else
  res = [-1, -1, -1]
  0.upto(man){|i|
    diff = n - (min + i)

    if diff > 0 && diff%4==0 && diff/4 <= gosen+2*i
      res = [man-i, gosen+2*i-diff/4, sen+diff/4*5]
    end
  }
  puts res.join(" ")
end