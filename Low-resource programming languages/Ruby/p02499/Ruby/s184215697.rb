a = Array.new(26, 0)
loop do
  s = gets
  break unless s
  s.downcase!
  s.chars.each do |c|
    next if c.ord < 97 || c.ord > 122
    a[c.ord - 97] += 1
  end
end

a.each_with_index do |n, i|
  puts "#{(97 + i).chr} : #{n}"
end