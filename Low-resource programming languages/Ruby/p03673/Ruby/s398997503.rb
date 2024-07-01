N = gets.to_i
as = gets.chomp.split

ans = "#{as.delete_at(0)}"
as.each do |a|
  ans += " #{a}"
  ans.reverse!
end
puts(ans)