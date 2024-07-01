input = gets.split(' ')
min = 100
conb = [
  [0, 1, 2],
  [0, 2, 1],
  [1, 0, 2],
  [1, 2, 0],
  [2, 0, 1],
  [2, 1, 0]]

conb.each { |conb_one|
  cost = 0
  last = -1
  conb_one.each { |c|
    if last > -1
      cost += (input[c].to_i - input[last].to_i).abs
    end

    last = c
  }

  if cost < min
    min = cost
  end
}

puts min