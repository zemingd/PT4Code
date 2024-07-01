#標準入力
s = gets.to_s.chomp
t = gets.to_s.chomp
s = s + "."

if t.match("#{s}") then
	puts "Yes"
else
	puts "No"
end