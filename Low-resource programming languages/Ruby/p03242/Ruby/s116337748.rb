n = gets.to_i
nums = gets.split.map(&:to_i)

a_nums = []
b_nums = []

index = 0
nums.each do |num|
  if index.even?
    a_nums.push(num)
  else
    b_nums.push(num)
  end
  index += 1
end

def getFreqList(nums)
  freqList = Hash.new
  nums.each do |num|
    if freqList[num].nil?
      freqList[num] = 1
    else
      freqList[num] += 1
    end
  end
  freqList.sort_by{|k, v| v}.reverse.map{|v| v[0]}
end

a_freqList = getFreqList(a_nums)#a_nums.sort_by!{|num| a_nums.count num}.reverse! #100000000
b_freqList = getFreqList(b_nums)#b_nums.sort_by!{|num| b_nums.count num}.reverse!

a_count = 0
b_count = 0

while a_freqList[a_count] == b_freqList[b_count]
  if b_count == a_count
    b_count += 1
  else
    b_count += 1
  end
end

res = 0

res += a_nums.select {|num| num != a_freqList[a_count]}.count + b_nums.select {|num| num != b_freqList[b_count]}.count #20000
p res