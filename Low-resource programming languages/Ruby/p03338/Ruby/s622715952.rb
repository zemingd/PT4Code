n = gets.to_i
s = gets.chomp.split("")
max = 0

for en in 0..(n-2)
  s1 = s[0..en]
  s2 = s[(en+1)..(n-1)]
  tp1 = Hash.new(0)
  tp2 = Hash.new(0)
  s1.each{|c| tp1[c] += 1}
  s2.each{|c| tp2[c] += 1}
  cnt = 0
  tp1.each do |k1,v1|
    tp2.each do |k2,v2|
      if k1 == k2
        cnt += 1
        break
      end
    end
  end
  max = [max, cnt].max
end
puts max