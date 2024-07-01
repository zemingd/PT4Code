s = gets.strip.chars.reverse.join
strings = %w(dream dreamer erase eraser).map {|str| str.chars.reverse.join}

while true
  can = false
  strings.each do |str|
    if s[0..str.length - 1] == str
      s = s[str.length..-1]
      can = true
    end
  end

  if !can
    puts "No"
    break
  end

  if s.empty?
    puts "Yes"
    break
  end
end
