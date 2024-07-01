s = gets.chomp.split("")
len = s.length
q = gets.to_i
t = Array.new(q)
f = Array.new(q)
c = Array.new(q)

for i in 0..(q-1)
  ln = gets.chomp.split("")
  if ln.length == 1
    t[i] = ln[0].to_i
    f[i] = 0
    c[i] = "."
  elsif ln.length == 5
    t[i] = ln[0].to_i
    f[i] = ln[2].to_i
    c[i] = ln[4]
  end
end

rev = 0
t.each{|tn| rev = (rev+(tn%2)) % 2}
enrev = rev
head = Array.new(0)
hn = 0
ends = Array.new(0)
en = 0

ps = 0
for i in 0..(q-1)
  if t[i] == 1
    rev = (rev+1) % 2
  elsif t[i] == 2
    f[i] = (f[i]+1) % 2 if rev == 1
    if f[i] == 1
      head.push(c[i])
      hn += 1
    elsif f[i] % 2 == 0
      ends.push(c[i])
      en += 1
    end
  end
end

s = s.reverse if enrev == 1
if hn > 0
  head = head.reverse
  head.each{|hc| print hc}
end
s.each{|ch| print ch}
ends.each{|ec| print ec} if en > 0
puts ""