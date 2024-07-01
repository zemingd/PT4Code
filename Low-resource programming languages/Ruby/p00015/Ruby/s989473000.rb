n = gets.to_i
$<.read.split("\n").each_cons{|a,b|
s = a.to_i + b.to_i
puts s.to_s <= 80 ? s : 'overflow'
}