N = gets.to_i
S = gets.strip.split('')
result = S.map do |s| 
  (((s.ord + N) % 65) + 65).chr
end
puts result