a, b = gets.split.map(&:to_i)
s = gets.chomp

puts s =~ /[0-9]{#{a}}\-[0-9]{#{b}}/ ? 'Yes' : 'No'
