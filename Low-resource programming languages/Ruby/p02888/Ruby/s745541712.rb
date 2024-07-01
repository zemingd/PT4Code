n = gets.to_i
l = gets.split.map(&:to_i).sort
ans = 0
n.times do |i|
  i.next.upto(n.pred) do |j|
    a = l[i] + l[j]
    j.next.upto(n.pred) do |k|
      if a > l[k]
        ans += 1
      else
        break
      end
    end
  end
end
puts ans