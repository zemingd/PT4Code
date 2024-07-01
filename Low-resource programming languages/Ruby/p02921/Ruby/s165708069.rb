s = gets.chomp!.to_s
t = gets.chomp!.to_s

count = 0
s.split("")
t.split("")

for i in 0..2 do
  if s[i] == t[i]
    count+=1
  end
end

p count