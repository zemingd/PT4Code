n = gets.to_i
s = gets.chomp.split('').map &:to_s

$w_rui = [0]
$e_rui = [0]
(1..n).each do |i|
  $w_rui.push s[i] === 'W' ? $w_rui[-1] + 1 : $w_rui[-1]
  $e_rui.unshift s[n-i] === 'E' ? $e_rui[0] + 1 : $e_rui[0]
end

puts [$w_rui , $e_rui].transpose.map{|x| x.sum}.min


