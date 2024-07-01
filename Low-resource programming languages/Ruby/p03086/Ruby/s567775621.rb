S = gets.chomp.scan(/[ACGT]+/)
max = 0

if S.length.zero?
  puts 0
else
  S.each do |s|
    max = s.length if s.length > max
  end
  
  puts max
end
