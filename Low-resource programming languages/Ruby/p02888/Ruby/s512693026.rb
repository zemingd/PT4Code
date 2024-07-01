n = gets.strip.to_i
ll = gets.strip.split.map(&:to_i).sort

result=0
(n-2).times do |i|
  a=ll[i]
  (i+2...n).each do |j|
    b=ll[j]
    (i+1...j).each do |k|
      c=ll[k]
      result += 1 if (a<b+c && b<a+c && c<a+b)
    end
  end
end

p result
