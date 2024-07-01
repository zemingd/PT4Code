A,B=gets.chomp.split.map(&:to_i)

(0..2000).each do |i|
  if(((i*0.08).floor) == A && ((i*0.1).floor) == B) then
    puts i
    exit
  end
end
puts -1