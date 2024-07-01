n = gets.chomp.to_i
ws = n.times.map { gets.chomp }

rule = true
last_c = ws[0][0]
said = []
ws.each do |word|
  if word.start_with?(last_c) && !said.include?(word)
    last_c = word[-1]
    said << word
  else
    rule = false
    break
  end
end
puts rule ? 'Yes' : 'No'
