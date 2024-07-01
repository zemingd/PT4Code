h = Hash.new(0)
while s = gets
  s.downcase.chars.each do |k|
    h[k] += 1
  end
end
('a'..'z').each do |k|
  puts "#{k} : #{h[k]}"
end