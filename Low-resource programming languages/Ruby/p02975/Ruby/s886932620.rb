N = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
if a.uniq.size == 1 && a.uniq[0] == 0
    puts "Yes"
else
    grouped = a.group_by{|a| a}
    if grouped.size == 3 && grouped.inject(0){|memo, (key, val)| memo ^ key} == 0 && grouped.map{|key, val| val.length}.uniq.size == 1
        puts "Yes"
    elsif grouped.size == 2 && grouped.map{|key, val| val.length}.sort[0] * 2 == grouped.map{|key, val| val.length}.sort[1] && grouped.sort_by{|key, val| val.length}[0][0] == 0
        puts "Yes"
    else
        puts "No"
    end
end