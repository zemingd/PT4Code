results = Array.new
while true do
   result = gets.split.map(&:to_i)
   if result[0] == -1 && result[1] == -1 && result[2] == -1
      break
   end
   results << result
end

results.each do |val|
   goukei = val[0] + val[1]
   if goukei >= 80
      puts "A"
   elsif goukei >= 65 && goukei < 80
      puts "B"
   elsif goukei >= 50 && goukei < 65
      puts "C"
   elsif goukei >= 30 && goukei < 50
      if val[2] >= 50
         puts "C"
      else
         puts "D"
      end
   elsif goukei < 30
      puts "F"
   elsif val[0] == -1 || val[1] == -1
      puts "F"
   end
end