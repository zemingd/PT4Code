s = gets.chomp
a = s[0..1]
b = s[2..4]

m_arr = []
(1..12).to_a.each do |v|
 m_arr << v.to_s.rjust(2,"0")
end

if m_arr.include?(a) && m_arr.include?(b)
  puts "AMBIGUOUS"
elsif  (m_arr.include?(a)==false) && (m_arr.include?(b)==false)
  puts "NA"
else
  puts "YYMM"
end
