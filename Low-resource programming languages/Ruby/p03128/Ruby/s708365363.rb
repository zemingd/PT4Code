N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

bar = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]
bar2num = Hash.new(0)
A.each do |n|
  b = bar[n]
  bar2num[b] = n if n > bar2num[b]
end

B = bar2num.keys.sort.reverse
B.delete(7) if B.include?(2) && B.include?(5)
B.delete(7) if B.include?(3) && B.include?(4)
B.delete(6) if B.include?(2) || B.include?(3)
B.delete(5) if B.include?(2) && B.include?(3)
B.delete(4) if B.include?(2) 
minbar = B.min
B.delete(minbar)
C = B.sort_by{|b| -bar2num[b]}.select{|b| bar2num[b] > bar2num[minbar]}

def calc(r)
  ans = []
  C.each do |b|
    if r >= b
      ans << b
      r -= b
    end
  end 
  B.each do |b|
    if r >= b   
      ans << b   
      r -= b   
    end 
  end
  r == 0 ? ans : false
end

q, r = N.divmod minbar
10.times do 
  tmp = calc(r)
  if tmp 
    tmp += Array.new(q, minbar)
    puts tmp.map!{|b| bar2num[b]}.sort!.reverse!.join
    break 
  end 
  q -= 1
  r += minbar 
end 
