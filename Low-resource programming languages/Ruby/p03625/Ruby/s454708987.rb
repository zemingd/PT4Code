n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
a.each do |x|
  h[x] += 1
end
l = 0
s = 0
h.keys.sort.reverse.each do |k|
  if h[k] >= 4 then
    l = k if l.zero?
    s = k if s.zero?
  elsif h[k] >= 2 then
    if l.zero? then
      l = k
    elsif s.zero?
      s = k
    end
  end
end
puts l * s