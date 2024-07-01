h, w = gets.split.map(&:to_i)
a = []
h.times do |i|
  s = gets.chomp
  a.push(s) if s.count('.') != w
end
(w - 1).downto(0) do |i|
  f = a.all?{|x| x[i] == '.'}
  if f
    a.each do |x|
      x[i] = ''
    end
  end
end
puts a