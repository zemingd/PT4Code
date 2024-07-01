N = gets.chomp.to_i
S = gets.chomp

cnt = 0
prev = nil
S.chars.each do |c|
  if prev != c then
    cnt += 1
  end
  prev = c
end

puts cnt