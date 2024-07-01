n = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
answer = 0
flag = []

(0...n-1).each do |number|
  flag.push(array[number] >= array[number + 1])
end

cnt = 0
local_cnt = 0

flag.each do |number|
  if number
    local_cnt += 1
  else
    if local_cnt >= cnt
      cnt = local_cnt
    end
    local_cnt = 0
  end
end

cnt = local_cnt if local_cnt >= cnt
puts cnt

