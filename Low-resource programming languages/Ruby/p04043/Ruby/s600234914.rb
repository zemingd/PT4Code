five = 2
seven = 1

gets.split.each do |i|
	five -= 1 if i == "5"
	seven -= 1 if i == "7"
end

print five == 0 && seven == 0 ? "YES" : "NO"

