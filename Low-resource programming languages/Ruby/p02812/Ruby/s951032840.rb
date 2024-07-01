n = gets.to_i
s = gets.chomp.split("")
ss = s.size
count = 0
(2..ss-1).each do |i|
    if s[i] == "C" && s[i-1] == "B" && s[i-2] == "A"
        count += 1
    end
end
puts count
