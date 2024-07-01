n, a, b, c = gets.chomp.split.map(&:to_i)
l = []
n.times do
  l.push gets.chomp.to_i
end

def array_diff(a, b)
  aa = a.dup
  b.each do |e|
    i = aa.find_index(e)
    if i
      aa.delete_at(i)
    end
  end
  aa
end

def calc(ary, h)
  (ary.size - 1) * 10 + (ary.reduce(:+) - h).abs
end

candidate = []
1.upto(n - 2) do |i|
  1.upto(n - 1 - i) do |j|
    1.upto(n - i - j) do |k|
      l.combination(i).each do |ic|
        array_diff(l, ic).combination(j).each do |jc|
          array_diff(array_diff(l, ic), jc).combination(k).each do |kc|
            candidate.push(calc(ic, a) + calc(jc, b) + calc(kc, c))
          end
        end
      end
    end
  end
end
puts candidate.min
