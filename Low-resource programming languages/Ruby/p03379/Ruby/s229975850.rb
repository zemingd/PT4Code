N = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)

for i in 1..N do
  a = nums.clone
  a.delete_at i - 1
  a.sort!
  puts a[(a.count + 1)/2 - 1]
end
