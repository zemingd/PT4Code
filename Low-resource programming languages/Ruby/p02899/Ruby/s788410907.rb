n = gets.to_i
keys = (1..n).to_a
vals = gets.split.map!{|i| i.to_i}
hash = Hash[keys.zip vals]
puts hash.sort_by{|k, v| v}.to_h.keys.join(" ")