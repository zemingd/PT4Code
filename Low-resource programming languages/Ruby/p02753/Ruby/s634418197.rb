def station_bus?(str)
  return false unless str.length == 3

  valid = false
  str.each_char.with_index do |s, i|
    return false unless ['A', 'B'].include?(s)
    next if i.zero?
    valid = true if s != str[i-1]
  end
  valid
end

str = gets.chomp!
puts station_bus?(str) ? 'Yes' : 'No'