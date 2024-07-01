n = gets.to_i
s = gets.chomp.split("")
arr = Array.new
a = s.count("E")
arr << a
for i in 0..n-1 do
    if s[i] == "E"
        a = a - 1
        arr << a
else
        a = a + 1
        arr << a
    end
end

puts arr.min