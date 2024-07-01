n = gets.to_i
a = gets.split.map(&:to_i).sort
b = a.tally
a.uniq!
m = a.size

ans = 0
m.times do |i|
  next if b[a[i]] > 1
  flag = true
  d = a.bsearch_index{|v|a[i]/2 < v}
  0.upto([i-1,d].min) do |j|
    if a[i] % a[j] == 0
      flag = false
      break
    end
  end
  ans += 1 if flag
end
puts ans