n, k, q = gets.to_s.split.map(&:to_i)
a = []
q.times do
  a << gets.to_i
end

putting = []
if k > q
  n.times do
    putting << "Yes\n"
  end
elsif
  n.times.with_index do |i|
    if a.count(i+1) > q - k
      putting << "Yes\n"
    else
      putting << "No\n"
    end
  end
end

puts putting