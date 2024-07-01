str = gets.chomp
a = str[0].to_i
b = str[1].to_i
c = str[2].to_i
d = str[3].to_i
ans = []
ans_str = []

[a, -a].each do |h|
  [b, -b].each do |i|
    [c, -c].each do |j|
      [d, -d].each do |k|
        if h + i + j + k == 7
          ans = [h, i, j ,k]
          break
        end
      end
    end
  end
end

ans.size.times do |i|
  if ans[i] >= 0 && i != 0
    ans_str << "+#{ans[i]}"
  else
    ans_str << "#{ans[i]}"
  end
end

puts "#{ans_str.join('')}=7"