def max(a,b); a > b ? a : b; end

N = gets.to_i
E = Array.new(N){ Array.new(N) }
N.times do |a|
  c = gets.to_i
  c.times.map do
    x, y = gets.split.map(&:to_i)
    E[a][x - 1] = y
  end
end
ans = (1 << N).times.inject(0) do |m, s|
  h = N.times.count{|i| s[i] > 0 }
  q = N.times.all? do |a|
    N.times.all? do |x|
      s[a] == 0 || (E[a][x].nil? || E[a][x] == s[x])
    end
  end
  q ? max(m, h) : m
end
puts ans
