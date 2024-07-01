sss = []
while bbb = $stdin.gets do
  sss << bbb.chomp.split(" ")
end

l = 0
r = 100000

sss.delete_at(0)

sss.each do |s|
  l = s[0].to_i if s[0].to_i > l
  r = s[1].to_i if s[1].to_i < r
end

p r - l + 1