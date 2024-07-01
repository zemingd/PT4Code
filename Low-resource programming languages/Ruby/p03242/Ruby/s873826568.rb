s = gets.strip

s = s.to_s

for n in 0...s.length
    if s[n] == "1" then
        s[n] = "9"
    elsif  s[n] == "9" then
        s[n] = "1"
    end
end

print s