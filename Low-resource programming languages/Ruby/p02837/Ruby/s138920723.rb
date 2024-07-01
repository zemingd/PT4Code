n = gets.chop.to_i
patterns = Array.new(2 ** n) { |i| i.to_s(2).rjust(n, '0') }

person = Array.new(n)
n.times do |m|
  s = Array.new(n)
  a = gets.chop.to_i
  a.times do
    h, t = gets.chop.split.map(&:to_i)
    s[h-1] = t.to_s
  end
  person[m] = s.dup
end

max = 0
patterns.each do |pattern|
  p_sum = 0
  flg = true
  (0..n-1).each do |x|
    next if pattern[x] == '0'
    say = person[x]
    flg = (0..n-1).all? do |y|
      next true if say[y].nil?
      say[y] == pattern[y]
    end
    break p_sum = 0 unless flg
    p_sum += 1 if flg
  end
  max = [max, p_sum].max
end
puts max