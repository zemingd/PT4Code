n = gets.to_i
l = gets.split.map(&:to_i).sort
cnt = 0
n.pred.times do |i|
  i.next.upto(n.pred) do |j|
    m = l[j] + l[i]
    x = l.bsearch_index{|z| z >= m}
    if x.nil?
      cnt += n - j - 1
    else
      cnt += x - j - 1
    end
  end
end
puts cnt