day = gets.to_i
answer = "Christmas"

case day
when day == 22
  answer = "Christmas Eve Eve Eve"
when day == 23
  answer = "Christmas Eve Eve"
when day == 24
  answer = "Christmas Eve"
end

puts answer