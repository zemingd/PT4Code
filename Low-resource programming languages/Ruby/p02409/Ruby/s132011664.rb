card = { :S => ("1".."13").to_i, :H => ("1".."13").to_i, :C => ("1".."13").to_i, :D => ("1".."13").to_i }

while ( abc = gets.split(" ").map(&:to_i) ) then
  moji,num = abc.split
  card[ moji.to_s ].delete( num )
end

card.each do | s, kazu |
  kazu.each do |i|
    puts("#{s} #{kazu}")
  end
end