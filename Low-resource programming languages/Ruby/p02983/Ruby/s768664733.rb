l,r = gets.split.map(&:to_i)
ans = Float::INFINITY
r = [r,l+2019].min #　modの性質より
(l..r).each do |i|
  (l..r).each do |j|
    next if i >= j
    mod = i*j % 2019
    ans = mod if mod < ans
  end
end
p ans