s = gets.chomp.split('').map(&:to_i)
k = gets.chomp.to_i

if k == 1
  p s[0]
  exit
end

(0..k-1).each do |i|
  if s[i] != 1
    p s[i]
    exit
  end
end
p 1
