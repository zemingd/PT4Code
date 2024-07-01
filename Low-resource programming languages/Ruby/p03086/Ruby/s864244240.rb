s = gets.strip.to_s
cnt = 0
max = 0
s.chars do |c|
  if c =~ /[ACGT]/
    cnt += 1
    max = [max, cnt].max
  else
    cnt = 0
  end
end
puts max
