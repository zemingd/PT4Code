s = gets.downcase.split('')
h = Hash.new( 0 )
s.each do | c |
  h[ c ] += 1
end
('a'..'z').each do | c |
  puts c+" : "+h[ c ].to_s
end