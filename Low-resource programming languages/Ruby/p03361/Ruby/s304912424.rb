h,w = gets.chomp.split.map(&:to_i)
s = []
h.times do |i|
  s[i] = gets.chomp
end

flag = true
(0...h).each do |y|
  (0...w).each do |x|
    break if s[y][x] == "."
    break if x<w-1 && s[y][x+1] == "#"
    break if y<h-1 && s[y+1][x] == "#"
    break if x>0   && s[y][x-1] == "#"
    break if y>0   && s[y-1][x] == "#"
    flag = false
  end
  break if !flag
end

printf("%s\n",(flag ? "Yes" : "No"))