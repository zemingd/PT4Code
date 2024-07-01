S = gets.chomp

ans = 0
max = 0
S.chars.each do |s|
  if s == 'A'
    ans += 1
  elsif s == 'T'
    ans += 1
  elsif s == 'C'
    ans += 1
  elsif s == 'G'
    ans += 1
  else
    if ans > max
      max = ans
    end
    ans = 0
  end
end

puts max
