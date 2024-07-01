n = gets.chomp.to_i
sticks = gets.chomp.split(" ").map(&:to_i)

tmp = nil
side = nil

sticks.sort{|a,b| b<=>a}.each do |length|
  if length == tmp
    next
  end

  num = sticks.count(length)

  if side.nil? && num >= 4
    puts length ** 2
    exit
  end

  if num >= 2
    unless side.nil?
      puts side * length
      exit
    end
    side = length
  end

  tmp = length
end

puts 0