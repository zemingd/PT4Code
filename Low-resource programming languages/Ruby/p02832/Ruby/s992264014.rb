N= gets.to_i
blocks = gets.split.map(&:to_i)
if !blocks.include?(1)
  puts -1
  exit
end

i = 0
num = 1
count = 0
while i < N
  val = blocks.shift
  if val == num
    num += 1
  else
    count += 1
  end
  i += 1
end
puts count
