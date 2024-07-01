K,*as=$<.read.split.map(&:to_i)

ret = 0

(1..K).each do |i|
  (i..K).each do |j|
    (j..K).each do |k|
      n = i.gcd(j).gcd(k)
      if i == j && i == k
        ret += n
      elsif i != j && j != k
        ret += n*6
      else
        ret += n*3
      end
    end
  end
end

puts ret
