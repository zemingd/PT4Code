n, a, b, c = gets.split.map(&:to_i)
l = []
n.times do
  l.push gets.chomp.to_i
end
def sum(ary)
  if ary && !ary.empty?
    ary.reduce(:+)
  else
    0
  end
end
def calc(ary, h)
  if ary.size == 1
    (ary.first - h).abs
  else
    (ary.size - 1) * 10 + (sum(ary) - h).abs
  end
end
candidate = []
1.upto(8) do |i|
  1.upto(8-i) do |j|
    1.upto(8-i-j) do |k|
      ll = l.dup
      ll.combination(i).each do |ic|
        (ll - ic).combination(j).each do |jc|
          (ll - ic - jc).combination(k).each do |kc|
            candidate.push(calc(ic, a) + calc(jc, b) + calc(kc, c))
          end
        end
      end
    end
  end
end
puts candidate.min
