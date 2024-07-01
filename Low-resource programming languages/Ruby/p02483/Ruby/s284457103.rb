input = STDIN.gets
n = input.split(" ")
n.collect! {|x| x.to_i}.sort!

puts n.join(" ")