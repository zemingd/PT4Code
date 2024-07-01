N = gets.to_i
A = gets.split.map(&:to_i)

A.map!.with_index {|a,i| [a,i]}
A.sort_by!{|a| a[0]}

A.each do |a|
    puts a[1]+1
end