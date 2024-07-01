while s=gets
  i,j = s.split.map(&:to_i).sort
  break if i==0 && j==0
  puts "#{i} #{j}"
end