n = gets.chomp.to_i

s = []
cnt = 0

n.times do
  si = gets.chomp.split("")
  si.sort!
  s.size.times do |j|
    cnt += 1 if si==s[j]
  end
  s.push(si)
end

p cnt