S = gets.chomp

puts S.chars.inject([0]){|a, s| a << a.last + (s == '1' ? 1 : -1)}.rindex(0)