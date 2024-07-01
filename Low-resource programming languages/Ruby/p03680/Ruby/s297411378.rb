N = gets.chomp.to_i
array = Array.new(3, 0)
chk = Array.new(3, 0)
cnt = 0
while tmp = gets  do
  array[cnt] = tmp.chomp.to_i
  cnt = cnt + 1
end

i = 0
cnt = 1
while chk[i] != 1 do
  if array[i] == 2 then
    print "#{cnt}"
    exit 0
  end
  chk[i] = 1
  i = array[i] - 1
  cnt = cnt + 1
end

print "-1"
exit 0