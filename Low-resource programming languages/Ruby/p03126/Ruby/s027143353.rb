n,m = gets.split.map(&:to_i)
arr = []
n.times do
  arr << gets.split.map(&:to_i)
end

ans = Array.new(m){|i| i + 1}
ans1 = Array.new(m){|i| i + 1}

ans.each do |b|
  arr.each do |a|
    c = a[1..-1]
    unless c.include?(b)
      ans1.delete(b)
    end
  end
end

p ans1.size