list = gets.split(" ")
list.map! {|cnt| cnt.to_i}.sort!
puts list.join(" ")