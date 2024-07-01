num = gets.chomp.to_i
letters = gets.chomp.split('')
$a_to_z = [*"A".."Z"]
$answer = []
letters.each do |letter|
  if $a_to_z.index(letter) + $num < $a_to_z.count
    $answer << $a_to_z[$a_to_z.index(letter) + $num]
  else
    $answer << $a_to_z[($a_to_z.index(letter) + $num) - $a_to_z.count]
  end 
end
puts $answer.join("")