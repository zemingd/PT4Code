a = []
a = gets.split.map(&:to_i)
b = []
b = gets.split.map(&:to_i)
puts b.join (" ")

d = []
n = 0
ans = 1
for i in 0..100000
  n = i
  ans = 1
  d = n.to_s.split("")
  for k in 0..d.length-1
      if b.include?(d[k].to_i)
        ans = nil
      end
  end
  #ans = nil
  #puts ans
  if n >= a[0] && ans
    puts n
    exit
  end
end
    
  