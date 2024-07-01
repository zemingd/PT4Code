i=0
File.open('sample').each_line do |x| 
  i+=1
  if x.to_i == 0
    break
  end
  puts "Case #{i}:#{x}" 
end