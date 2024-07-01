io = STDIN
a,b=io.gets.split.map(&:to_i)
sq="#{a.to_s}#{b.to_s}".to_i
if (1..100).map{|a|a**2}.include?(sq)
  puts "Yes"
else
  puts "No"
end
