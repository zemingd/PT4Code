results = Array.new
while true do
   result = gets.split.map(&:to_i)
   if result[0] == -1 && result[1] == -1 && result[2] == -1
      break
   end
   results << result
end

ans = []
results.each do |val|
   goukei = val[0] + val[1]
   if goukei >= 80
      ans.push "A"
   elsif goukei >= 65 && goukei < 80
      ans.push "B"
   elsif goukei >= 50 && goukei < 65
      ans.push "C"
   elsif goukei >= 30 && goukei < 50
      if val[2] >= 50
         ans.push "C"
      else
         ans.push "D"
      end
   elsif goukei < 30
      ans.push "F"
   elsif val[0] == -1 || val[1] == -1
      ans.push "F"
   end
end

ans.each do |an|
   puts an
end