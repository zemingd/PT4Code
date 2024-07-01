while (h,w = gets.split.collect{|item| item.to_i})
 
if h == 0 and w == 0
    break
end

h.times {puts "#" * w}

puts "\n"

end
