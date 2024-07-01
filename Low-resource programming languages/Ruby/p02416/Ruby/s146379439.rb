while nums = gets
  nums.chomp!
  data = nums.split(//).map{|e|e.to_i}
  break if data.size == 1 && data[0] == 0
  puts data.inject(0){|memo,elem|memo += elem}
end

# inject(init){|memo,arrayElement|}
# inject's return value is last memo values