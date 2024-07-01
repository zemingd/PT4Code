s = gets.chomp.chars
so = []
s.each do |c|
  if c != 'B'
    so << c
  else
    so.pop
  end
end
puts so.join