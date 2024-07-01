# Aの先頭とBの先頭を比較して、
# Bの先頭の次の本の所要時間が少ない場合が連続した場合等、
# 先頭を比較するだけでは厳しい場合がある。
# K分を超える分の本の冊数を見る必要がある。
# 3 4 240
# 60 90 120
# 80 150 1 1

n,m,k=gets.split.map &:to_i
a=gets.split.map &:to_i
b=gets.split.map &:to_i
t=0
i=0
ab=a+b
ab.repeated_permutation
last_el = 0
while true
  if t>k
    t-=last_el
    i-=1
    break
  end

  if !a.empty? && !b.empty?
    # 残った本による所要分数の計算
    ac=0
    bc=0
    at = 0
    bt = 0
    a2 = Marshal.load(Marshal.dump(a))
    b2 = Marshal.load(Marshal.dump(b))
    a2s = a2.length
    b2s = b2.length
    loop_times = [a2s,b2s].max
    small = 'b'
    loop_times.times do |l|
      if !a2&.[](l).nil?
        at += a2[l]
        ac+=1
      end
      if !b2&.[](l).nil?
        bt += b2[l] 
        bc+=1
      end
      break if at>=(k-t) && bt>=(k-t)
    end
	# 比較
    if ac <= bc
      t+=b[0]
      last_el=b[0]
      b.shift
    else
      t+=a[0]
      last_el=a[0]
      a.shift
    end
  elsif a.empty? && !b.empty?
     t+=b[0]
     last_el=b[0]
     b.shift
  elsif b.empty? && !a.empty?
     t+=a[0]
     last_el=a[0]
     a.shift
  elsif a.empty? && b.empty?
    break
  end
  i+=1
end
#p t
puts i