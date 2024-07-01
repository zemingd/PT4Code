while true do
s=STDIN.gets
h=s.split[0].to_i
w=s.split[1].to_i
break if (h==0 && w==0)
h.times {
  w.times { printf("#") }
    puts "\n" }
puts "\n"
end