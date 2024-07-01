n = gets.to_i
v = gets.split.map(&:to_i)
h = Hash.new(0)
g = Hash.new(0)
v.each_with_index do |x, i|
  if i % 2 ==0
    h[x] += 1
  else
    g[x] += 1
  end
end
if h.size == 1 && g.size == 1
  if h.keys == g.keys
    puts g.values[0]
  else
    puts "0"
  end
else
  ans = 0
  ch = 0
  ck = 0
  h.sort_by{|k, v| -v}.each do |kh, vh|
    g.sort_by{|k, v| -v}.each do |kg, vg|
      if kh != kg
        ans = vh + vg if ans < vh + vg
      end
      ck += 1
      break if ck > 2
    end
    ch += 1
    break if ch > 2  
  end
  puts n - ans
end