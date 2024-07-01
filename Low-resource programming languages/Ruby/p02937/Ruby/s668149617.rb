ss = gets.chomp
tt = gets.chomp.chars

ss = ss*tt.size
reg = tt.join(".*?")
idx = ss.index(/#{reg}/)
if idx.nil?
  puts -1
  exit
end
str = nil
ss.scan(/#{reg}/) do |s|
  str=s
  break
end

puts idx+str.length