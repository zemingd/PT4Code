N, C = gets.split.map(&:to_i)
stc = N.times.map { gets.split.map(&:to_i) }
a = Array.new(C) { Array.new(100001, 0) }

stc.each do |s, t, c|
  a[c-1][s] += 1
  a[c-1][t] -= 1
end

b = Array.new(200002, 0)
a.each do |ai|
  100000.times do |i|
    if ai[i] == 1
      b[i*2-1] += 1
    elsif ai[i] == -1
      b[i*2] -= 1
    end
  end
end

max = c = 0
b.each do |i|
  c += i
  max = [max, c].max
end

p max
