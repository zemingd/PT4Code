list = gets.split(" ")
list.map! {|cnt| cnt.to_i}.sort!
list.join(" ")
puts (list)