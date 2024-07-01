n = STDIN.gets.chomp.to_i
s = STDIN.gets.chomp.split("")

cnt = 0
for i in 0..(n-1) do
  if s[i] == "."
    cnt += 1
  end
end

puts min([cnt, (n-cnt)])