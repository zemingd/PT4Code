S = gets.strip

S =~ /(R+)/

if $1
  puts $1.size
else
  puts "0"
end
