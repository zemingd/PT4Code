h,w = gets.split.map(&:to_i)
m = h.times.map{ gets.chomp }

d = Array.new(h){ Array.new(w,0) }

h.times do |i|
  w.times do |j|
    if j == 0
      d[i][j] = ( m[i][j] == '.' ? 1 : 0 )
    elsif m[i][j] == ?.
      d[i][j] = d[i][j-1] + 1
    end
  end
end

d.map!{|s| s.reverse }

h.times do |i|
  w.times do |j|
    if j == 0
      next
    elsif d[i][j] > 0
      d[i][j] = d[i][j-1] unless d[i][j-1] == 0
    end
  end
end

d.map!{|s| s.reverse }
# p d

e = Array.new(h){ Array.new(w,0) }

w.times do |j|
  h.times do |i|
    if i == 0
      e[i][j] = ( m[i][j] == ?. ? 1 : 0 )
    elsif m[i][j] == ?.
      e[i][j] = e[i-1][j] + 1
    end
  end
end

# p e

(-1).downto(-w) do |j|
  (-1).downto(-h) do |i|
    if i == -h
      next
    elsif e[i-1][j] > 0
      e[i-1][j] = e[i][j] unless e[i][j] == 0
    end
  end
end

ans = 0
h.times do |i|
  w.times do |j|
    m = d[i][j] + e[i][j] - 1
    ans = m if ans < m 
  end
end

p ans