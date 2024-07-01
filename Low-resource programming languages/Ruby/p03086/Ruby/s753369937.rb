S = gets.chomp

m = S.scan(/[ACGT]+/)

if !m.empty?
  size = m.map do |ms|
    ms.size
  end
  puts size.max
else
  puts 0
end
