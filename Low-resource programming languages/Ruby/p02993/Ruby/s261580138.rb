input = gets.chomp

bad = [/00/,/11/,/22/,/33/,/44/,/55/,/66/,/77/,/88/,/99/]

result = "Good"
bad.each do |one|
  if input =~ one
    result = "Bad"
  end
end

puts result