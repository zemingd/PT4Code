idS = gets.split.to_s.match(/[a-z]+/)
idT = gets.split.to_s.match(/[a-z]+/)
number = idT.length

if idS.length >= 1 && idS.length <= 10
  if idT = idS + idT.slice(number).match(/[a-z]/)
    puts "Yes"
  else 
    puts "No"
  end
else
  puts "No"
end