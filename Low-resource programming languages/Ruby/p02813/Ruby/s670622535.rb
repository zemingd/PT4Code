n, p, q = STDIN.readlines
n = n.to_i
p, q = [p, q].map {|x| x.split(' ').map(&:to_i) }
if 0 > (q <=> p)
  p, q = q, p
end

f = nil

[*1..n].permutation.with_index(1).each do |x, i|
  if f.nil?
    if x == p
      f = i
    end
  end
  if f
    if x == q
      puts i - f
      break
    end
  end
end
