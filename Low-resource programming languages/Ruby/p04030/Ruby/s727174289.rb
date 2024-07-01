S = gets.chomp
result = ""
S.each_char { |ch|
  if ch == "B"
    if result != ""
      result.chop!
    end
  else
    result = result + ch
  end
}
puts result
