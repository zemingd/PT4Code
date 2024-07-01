n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
(1..n).each do |a|
  tmp_a = a + a
  while tmp_a <= n do
    hash[a] ||= []
    hash[a] << tmp_a
    tmp_a += a
  end
end

b_arr = []
hash2 = {}
while n > 0 do
  n /= 2
  a_arr[n..-1].each_with_index do |a, i|
    num = n + i + 1
    count = (hash[num] || []).map{|map_n| hash2[map_n].to_i }.inject(&:+).to_i
    if a == 1 then
      if count % 2 == 1 then
        hash2[num] = 0
      else
        hash2[num] = 1
        b_arr << num
      end
    else
      if count % 2 == 1 then
        hash2[num] = 1
        b_arr << num
      else
        hash2[num] = 0
      end
    end
  end
  a_arr = a_arr[0..(n-1)]
end

puts b_arr.length
if b_arr.length > 0 then
  puts b_arr.reverse.join(" ")
end
