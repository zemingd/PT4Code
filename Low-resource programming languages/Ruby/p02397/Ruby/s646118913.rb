3000.times do |i|
  a=gets.split.map(&:to_i).sort
  break if a[0]==0 && a[1]==0
  puts "#{a[0]} #{a[1]}"
end
