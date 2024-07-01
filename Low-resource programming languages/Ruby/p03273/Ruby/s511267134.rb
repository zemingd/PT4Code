h, w = gets.split.map(&:to_i)
a = []
h.times do |i|
  s = gets.chomp
  a.push(s) if s.index('#')
end
(w - 1).downto(0) do |i|
  if a.all?{|x| x[i] == '.'}
    a.each do |x|
      x[i] = ''
    end
  end
end
puts a