N = gets.to_i
as = gets.chomp.split

dir = as.length.even?
ans = "#{as.delete_at(0)}"
as.each do |a|
  if dir == true
    ans = "#{a} " + ans
    dir = false
  else
    ans += " #{a}"
    dir = true
  end
end
puts(ans)