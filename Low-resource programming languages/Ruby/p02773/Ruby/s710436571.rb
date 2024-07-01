n = gets.to_i
array = []
n.times do
  array << gets.chomp.to_s
end

ans = array.group_by(&:itself).map{|k, v| [k, v.count]}.sort_by{|k,n| -n}
ans_name = [ans[0][0]]

ans_cut = ans[1..-1]
ans_cut.each do |x|
    if ans[0][1] == x[1]
        ans_name << x[0]
    else
        break
    end
end

puts ans_name.sort
