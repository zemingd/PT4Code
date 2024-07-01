A, B = gets.split
S = gets.chomp

puts S =~ /[0-9]{#{A}}-[0-9]{#{B}}/ ? 'Yes' : 'No'