A, B, Q = gets.split.map(&:to_i)
@s = []
@t = []
@q = []
A.times do
  @s << gets.to_i
end
B.times do
  @t << gets.to_i
end
Q.times do
  @q << gets.to_i
end

q_a = []
@q.each do |q|
  original_sorted_a = @s.sort{ |_a| (_a - q).abs }
  original_sorted_b = @t.sort{ |_a| (_a - q).abs }
  sorted_a = @s.map{ |_a| (_a - q).abs }.sort
  sorted_b = @t.map{ |_b| (_b - q).abs }.sort
  first_a = 10 ** 20
  first_b = 10 ** 20

  if [@s,@t].flatten.count > 2
    first_a = (original_sorted_b.sort do |_b|
    (original_sorted_a.first - _b).abs
  end.first - original_sorted_a.first).abs + (original_sorted_a.first - q).abs
  first_b = (original_sorted_a.sort do |_a|
    (original_sorted_b.first - _a).abs
  end.first - original_sorted_a.first).abs + (original_sorted_b.first - q).abs
  end

  if q.between?([@s,@t].flatten.min, [@s,@t].flatten.max)
    q_a << [sorted_b.first * 2 + sorted_a.first, sorted_a.first * 2 + sorted_b.first, first_a, first_b].min
  else
    f = [sorted_a.first, sorted_b.first].flatten
    q_a << f.first(2).inject(:+) - f.last
  end
end

puts q_a
