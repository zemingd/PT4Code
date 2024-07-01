n,k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
num = [arr.uniq.size - k,0].max
if num == 0
  puts 0
  exit
end
num_list = Array.new(arr.uniq.size,0)
arr.sort! << -1
i = 1
j = 0
count = 1
while i <= n
  if arr[i-1] == arr[i]
    count += 1
  else
    num_list[j] = count
    count = 1
    j += 1
  end
  i += 1
end
puts num_list.reverse[0..(num-1)].sum