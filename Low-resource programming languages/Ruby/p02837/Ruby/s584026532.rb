def eval(t, a)
  t.each.with_index do |tt, i|
    if tt == 1
      a[i].each do |aa|
        index = aa[0] - 1
        if t[index] != aa[1]
          return false
        end
      end
    end
  end
  true
end

n = gets.to_i

a = Array.new(n).map{|_| Array.new}

(0...n).each do |i|
  ai = gets.to_i
  (1..ai).each do |_|
    a[i] << gets.chomp.split.map(&:to_i)
  end
end

ans = 0
(0...2**n).each do |i|
  s = ("%0#{n}b" % i).split("").map(&:to_i)
  if eval(s, a)
    h = s.select{|j| j == 1}.length
    ans = [ans, h].max
  end
end

p ans