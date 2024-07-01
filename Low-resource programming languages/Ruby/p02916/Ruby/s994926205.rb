n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)


result=0
pre=nil
a.each do|i|
  result += b[i-1]
  result+=c[i-2] if pre==i-1
  pre=i
end

p result
