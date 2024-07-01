n = gets.to_i

ans = [gets.chomp]
(1..n).each do |i|
  w = gets.chomp
  if ans.include?(w) || ans[i-1][-1] == w[-1]
    puts 'No'
    exit
  else
    ans.push(w)
  end
end
puts 'Yes'