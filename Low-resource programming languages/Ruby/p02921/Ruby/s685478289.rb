S = gets.chomp
T = gets.chomp

co = 0
S.chars.each_with_index do |c, i|
  if T[i] == c
    co += 1
  end
end
p co
