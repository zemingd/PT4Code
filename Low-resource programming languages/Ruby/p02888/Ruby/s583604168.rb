n = gets.to_i
ls = gets.split.map(&:to_i).sort

def judge(a, b, c)
  return false unless c < a + b
  true
end

ans = 0

(0..n-3).each do |i|
  ((i+1)..n-2).each do |j|
    ((j+1)..n-1).each do |k|
      if judge(ls[i], ls[j], ls[k])
        ans += 1
      end
    end
  end
end

puts ans