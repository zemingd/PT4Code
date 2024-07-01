N = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
if a.uniq.size == 1 && a.uniq[0] == 0
    puts "Yes"
else
    grouped = a.group_by
    if grouped.size == 3 && grouped.inject{|memo, (key, val)| memo ^ key} == 0 && grouped.inject{|memo, (key, val)| memo == val.length}
        puts "Yes"
    else
        puts "No"
    end
end