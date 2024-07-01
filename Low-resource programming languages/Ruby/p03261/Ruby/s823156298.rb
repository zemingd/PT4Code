N = gets.chomp.to_i
w_array = []
used_array = []
flag = true

N.times do |i|
  w_array << gets.chomp
end

w_array.each_with_index{|item, idx|
  unless idx == 0
    if used_array.include?(w_array[idx])
      flag = false
    end

    unless w_array[idx-1].split("")[-1] == w_array[idx].split("")[0]
      flag = false 
    end
  end

  used_array << item
}

if flag
  puts "Yes"
else
  puts "No"
end
