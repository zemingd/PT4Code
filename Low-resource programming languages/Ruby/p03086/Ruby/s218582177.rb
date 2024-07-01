s = gets.to_s.chomp

ATGC = %w( A T G C )

ans = 0
cnt = 0
s.each_char do |c|
  
  if ATGC.include?(c)
    cnt += 1
    ans = [ans, cnt]
  else
    cnt = 0
  end
end

puts ans