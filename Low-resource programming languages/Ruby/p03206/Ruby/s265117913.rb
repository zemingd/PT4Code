day = gets.to_i
answer = "Christmas"

(0...25 - day).each do
  answer = answer + " Eve"
end

puts answer