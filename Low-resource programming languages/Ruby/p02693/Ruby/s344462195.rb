lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}

k = lines[0][0]
a = lines[1][0]
b = lines[1][1]

answer = "NG"

for i in a..b do
  if i % k == 0 then
    answer = "OK"
    break
  end
end

  print answer