array = []

s = gets.chomp.split("")

until s.length == 0
  s_single = s.shift

  if s_single == "B"
    array.slice!(array.length-1)
  else
    array << s_single
  end
end

puts array.join("")