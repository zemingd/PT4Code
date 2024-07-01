n = gets.chomp.to_i()
nums = gets.chomp.split.map(&:to_i)
ans = []
nums.permutation(n).to_a.each do |a|
  n.times do |i|
    if i == 0 then
      ans << ((a[-1] ^ a[i+1]) == a[i])
    elsif i == n-1 then
      ans << ((a[i-1] ^ a[0]) == a[i])
    else
      ans << ((a[i-1] ^ a[i+1]) == a[i])
    end
  end
  break if ans.all? {|f| f == true }
end
puts ans.all? {|f| f == true } ? "Yes" : "No"