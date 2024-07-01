n, k = gets.split.map(&:to_i)
d = gets.split

n.to_s.upto('10000') do |s|
  next if s.each_char.any? { |c| d.include? c }

  puts s
  exit
end