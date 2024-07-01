a = []
a = gets.split.map(&:to_i)
b = []
b = gets.split.map(&:to_i)
C = [0,1,2,3,4,5,6,7,8,9]
for i in 0..b.length-1
  C.delete(b[i])
end
d = []
n = 0
ans = 1
for i in 0..100000
  n = i
  ans = 1
  d = n.to_s.split("")
  for j in 0..b.length-1
      if b.include?(d[0].to_i)
        ans = nil
      elsif b.include?(d[1].to_i)
        ans = nil
      elsif b.include?(d[2].to_i)
        ans = nil
      elsif b.include?(d[3].to_i)
        ans = nil
      elsif b.include?(d[4].to_i)
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
    
  