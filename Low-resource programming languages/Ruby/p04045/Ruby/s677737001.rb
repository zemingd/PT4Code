n, _ = gets.split.map(&:to_i)
d = gets.split

n.to_s.upto('99999') do |s|
  next if s.each_char.any? { |c| d.include? c }

  puts s
  exit
end