word = STDIN.gets.downcase.chomp

text = ""
while STDIN.gets != nil
text += $_.downcase.chomp + " "
end

count = 0

text.split(" ").each{|w|
if(w==word) then count+=1 end
}

puts count