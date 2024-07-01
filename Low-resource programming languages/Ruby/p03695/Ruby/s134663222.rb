$stdin.read
array = lines.split("\n")

intarr = array[1].split(" ").map(&:to_i).sort
MAX    = intarr.max
MIN    = intarr.min
MAX_M  = MAX/400
MIN_M  = MIN/400

count_min  = 0
over_eight = intarr.count{|e| e >= 8*400}

for mod in MIN_M..MAX_M
  if mod >= 8
    break
  elsif mod == MIN_M or mod == MAX_M
    count_min += 1
  else
    if intarr.detect{|e| e >= mod*400 and e < (mod+1)*400}
      count_min += 1
    end
  end
end

puts "#{count_min} #{count_min+over_eight}"

