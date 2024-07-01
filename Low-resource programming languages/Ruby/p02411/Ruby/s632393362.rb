ary = []
ARGF.each do |line|
  m, f, r = line.split.map(&:to_i)
  sum = m+f
  if m < 0 || f < 0
    ary << "F"
  elsif sum => 80
    ary << "A"
  elsif sum => 65 && sum < 80
    ary << "B"
  elsif sum => 50 && sum < 65
    ary << "C"
  elsif r => 50
    ary << "C"
  elsif sum => 30 && sum < 50
    ary << "D"
  else
    ary << "F"
  end
end

puts ary