n = gets.chomp.to_i()
nums = gets.chomp.split.map(&:to_i)
ans = []
n.times do |i|
  if i == 0 then
    ans << ((nums[-1] ^ nums[i+1]) == nums[i])
  elsif i == n-1 then
    ans << ((nums[i-1] ^ nums[0]) == nums[i])
  else
    ans << ((nums[i-1] ^ nums[i+1]) == nums[i])
  end
end
p ans.all? {|f| f == true } ? "Yes" : "No"