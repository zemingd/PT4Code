N = gets.chomp.to_i
S = gets.chomp

s = S

cnt = 0
idx = 0
while true do
  idx = s.index("ABC")
  if idx == nil then
    break
  end
  s = s[idx+3..-1]
  cnt += 1
end

puts cnt