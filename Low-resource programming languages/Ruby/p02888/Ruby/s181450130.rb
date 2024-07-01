n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)

ans = 0

def ok?(a,b,c)
  if a < b+c && b<c+a && c<a+b
    true
  else
    false
  end
end



0.upto(n-1).each do |i|
  (i+1).upto(n-1).each do |j|
    (j+1).upto(n-1).each do |k|
      ans += 1 if ok?(l[i],l[j],l[k])
    end
  end
end

puts ans