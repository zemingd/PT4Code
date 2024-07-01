n = gets.to_i
s = gets.chomp.chars
cnt = 0
s.each_with_index do |c,i|
  if i+1 < n && c =="#" && s[i+1] == "."
    cnt += 1
  end
end
puts cnt
