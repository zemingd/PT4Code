A,B= gets.split.map(&:to_i)
S = gets.chomp


char_array = S.chars

check = true
char_array.each_with_index{|value,index|
  if index == A
      check = false if value!='-'
  else
    check = false unless (value =~  /[0-9]/)
  end
}

if check
  puts 'Yes'
else
  puts 'No'
end