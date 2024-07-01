a = gets.to_i
b = gets.chomp!

bb = b.split('')

bb.each do |i|
  a.times do
    if i == 'Z'
      i.gsub!('Z', 'A')
    else
      i.succ!
    end
  end
end

puts bb.join
