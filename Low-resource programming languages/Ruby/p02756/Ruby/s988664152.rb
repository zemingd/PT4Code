s = gets.chomp
q = gets.chomp.to_i

current = true
mae = []
ato = []

q.times do |i|
  query = gets.chomp.split(' ')
  current = !current if (query[0] == '1')
  if (query[0] == '2')
    if (current)
      if (query[1] == '1')
        mae << query[2]
      else
        ato << query[2]
      end
    else
      if (query[1] == '1')
        ato << query[2]
      else
        mae << query[2]
      end
    end
  end
end
puts current ? mae.reverse.join + s + ato.reverse.join : ato.join + s + mae.join