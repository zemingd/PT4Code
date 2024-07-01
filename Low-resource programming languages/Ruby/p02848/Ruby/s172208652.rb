N = gets.to_i % 26
S = gets.strip.split('')
result = S.map do |s| 
  n = s.ord + N;
  if n < 91
    n.chr
  else
    (n % 90 + 64).chr
  end
end
puts result.join('')