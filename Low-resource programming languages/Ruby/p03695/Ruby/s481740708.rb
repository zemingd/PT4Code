lines = $stdin.read
array = lines.split("\n")

intarr = array[1].split(" ").map(&:to_i).sort
modarr = intarr.map{|e| e = e/400}.uniq
maxval = if modarr.include? 8
           1
         else
           0
         end

puts "#{modarr.size} #{modarr.size+maxval}"
