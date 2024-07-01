a,b = gets.chomp.split
arr = {"A"=>10,"B"=>11,"C"=>12,"D"=>13,"E"=>14,"F"=>15}

if arr.fetch(a) < arr.fetch(b)
  puts "<"
elsif arr.fetch(a) > arr.fetch(b)
  puts ">"
else
  puts "="
end
