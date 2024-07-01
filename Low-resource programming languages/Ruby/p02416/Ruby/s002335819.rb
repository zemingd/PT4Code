while line=gets.chomp
  break if line=="0"
  sum=0
  line.chars {|c| sum+=c.to_i}
  puts sum
end