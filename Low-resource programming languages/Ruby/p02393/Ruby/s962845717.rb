a = gets.chomp.split("\s")
if a[0].to_i <= a[2].to_i and a[0].to_i < a[1].to_i
  if a[2].to_i < a[1].to_i
    puts "#{a[0]} #{a[2]} #{a[1]}"
  else
    puts "#{a[0]} #{a[1]} #{a[2]}"
  end
elsif a[2].to_i <= a[1].to_i and a[2].to_i < a[0].to_i
  if a[1].to_i < a[0].to_i
    puts "#{a[2]} #{a[1]} #{a[0]}"
  else
    puts "#{a[2]} #{a[0]} #{a[1]}"
  end
else 
  if a[2].to_i < a[0].to_i 
    puts "#{a[1]} #{a[2]} #{a[0]}"
  else
    puts "#{a[1]} #{a[0]} #{a[2]}"
  end
end