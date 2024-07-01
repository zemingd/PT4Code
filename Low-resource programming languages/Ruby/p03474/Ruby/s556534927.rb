A, B = gets.split.map(&:to_i)
# x = gets.split.map(&:to_i)
s = gets.chomp

puts s =~ /([\d]{#{A}})-([\d]{#{B}})/ ? "Yes" : "No"