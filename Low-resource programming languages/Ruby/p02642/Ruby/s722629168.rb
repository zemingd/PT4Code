n = gets.to_i
arr = gets.to_s.split.map(&:to_i)

max = arr.max
hash = {}
arr.each do |num|
  p num
  hash[num] = hash[num].nil? ? true : false
  (2..max).each do |i|
    if num * i > max
      p [num, i]
      break
    end
    hash[num * i] = false
  end
end

count = 0
hash.each do |_num, bool|
  count += 1 if bool
end
puts count