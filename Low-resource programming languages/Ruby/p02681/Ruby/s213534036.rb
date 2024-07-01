S=gets.chomp.to_s
T=gets.chomp.to_s

T.slice!(-1)

if S==T
    puts "Yes"
else
    puts "No"
end