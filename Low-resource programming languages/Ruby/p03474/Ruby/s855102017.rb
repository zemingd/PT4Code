A,B = gets.split.map(&:to_i)
S = gets.chomp

puts S.match(/\d{#{A}}-\d{#{B}}/) ? 'Yes' : 'No'