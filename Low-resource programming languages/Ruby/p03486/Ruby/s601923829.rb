if ARGV[0]=="LOCAL_DEV"
	define_method("debug") do |var|
		p var
	end
else
	define_method("debug") do |var|
	end
end

a=STDIN.gets.strip
a.chars.sort!
b=STDIN.gets.strip
b.chars.sort!
b.reverse!
debug a
debug b
if a<b
  puts "Yes"
else
  puts "No"
end
