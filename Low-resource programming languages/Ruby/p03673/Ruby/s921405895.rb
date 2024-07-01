n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = []
flag = false
as.each_with_index do |a,i|
  if i.even?
    ans.push(a)
  else
    ans.unshift(a)
  end
  flag = !flag
end

puts flag ? ans.reverse.join(" ") : ans.join(" ")