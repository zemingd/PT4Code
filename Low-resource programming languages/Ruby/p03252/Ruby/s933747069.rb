s = gets.chomp.chars
t = gets.chomp.chars
cnt_s = s.uniq.map { |c| s.count(c) }.sort
cnt_t = t.uniq.map { |c| t.count(c) }.sort

if cnt_s == cnt_t
  puts 'Yes'
else
  puts 'No'
end