if $stdin.read.strip.split(//).sort.uniq.length == 2
  puts "Yes"
else
  puts "No"
end
