gets
As = gets.split.map(&:to_i)

node = nil

loop do
  max = As.max
  count = As.count(max)

  if node.nil?
    if count >= 4
      puts max * max
      exit
    end

    if count >= 2
      node = max
    end
  else
    if count >= 2
      puts node * max
      exit
    end
  end

  As.delete(max)

  break if As.empty?
end

puts 0
