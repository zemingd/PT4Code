def lscan; gets.split.map(&:to_i); end

s = gets.chomp
t = gets.chomp

cnt = 0
cnt += 1 if s[0] == t[0]
cnt += 1 if s[1] == t[1]
cnt += 1 if s[2] == t[2]

p cnt