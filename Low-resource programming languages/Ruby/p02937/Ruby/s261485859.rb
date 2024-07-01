s = gets.chomp
t = gets.chomp

# key: abc, value: index_arr
hash = {}
(0..s.length-1).each do |i|
  hash[s[i]] ||= []
  hash[s[i]] << i
end

result = 0
index = 0
(0..t.length-1).each do |i|
  index_arr = hash[t[i]]
  if index_arr.nil? then
    puts -1
    exit 0
  end

  tmp_index = -1
  index_arr.each do |ind|
    if ind < index then
      tmp_index = ind if tmp_index == -1
      next
    end
    result += ind - index + 1
    index = ind == s.length - 1 ? 0 : ind + 1
    tmp_index = -1
    break
  end
  if tmp_index >= 0 then
    result += s.length - index + tmp_index + 1
    index = tmp_index == s.length - 1 ? 0 : tmp_index + 1
  end
end

puts result
