a = []
b = []

5.times do
  x = gets.chomp.to_i
  if x % 10 == 0
    a << x
  else
    b << x
  end
end

b.sort_by!{|x| x % 10}

ret = 0
ret += a.inject(:+) unless a.empty?
x = b.shift
ret += x unless x.nil?
b.each do |x|
  ret += (x / 10 + 1) * 10
end
puts ret