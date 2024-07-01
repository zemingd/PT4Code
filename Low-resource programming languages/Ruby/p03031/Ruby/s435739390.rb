n, m = gets.chomp.split(" ").map(&:to_i)
ks = []
ss = []
m.times do |i|
  k, *s = gets.chomp.split(" ").map(&:to_i)
  ks[i] = k
  sp = Array.new(n, 0)
  s.each do |j|
    sp[j - 1] = 1
  end
  ss[i] = sp
end
p = gets.chomp.split(" ").map(&:to_i)

def all_on?(pat, ss, p)
  ss.each_with_index do |s, j|
    cnt = 0
    s.each_with_index do |v, i|
      cnt += v * pat[i]
    end
    return false if cnt % 2 != p[j]
  end
  true
end

cnt = 0
0.upto(n) do |i|
  # n個中，i個switch on
  (0...n).to_a.combination(i).each do |c|
    pat = Array.new(n, 0)
    c.each do |j|
      pat[j] = 1
    end
    cnt += 1 if all_on?(pat, ss, p)
  end
end
puts cnt
