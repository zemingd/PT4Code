A = 3.times.inject([]) {|m, _|
  m + gets.split.map(&:to_i)
}

N = gets.to_i

B = N.times.map {
  gets.to_i
}

c = []

B.each do |b|
  A.each_with_index do |a, i|
    next if a != b
    bingo = false
    c[i] = true
    x, y = i / 3, i % 3
    case x
    when 0
      bingo = c[i + 3] && c[i + 6]
    when 1
      bingo = c[i - 3] && c[i + 3]
    when 2
      bingo = c[i - 3] && c[i - 6]
    end
    case y
    when 0
      bingo = c[i + 3] && c[i + 6]
    when 1
      bingo = c[i - 3] && c[i + 3]
    when 2
      bingo = c[i - 3] && c[i - 6]
    end
    if x == y
      case y
      when 0
        bingo = c[i + 4] && c[i + 8]
      when 1
        bingo = c[i - 4] && c[i + 4]
      when 2
        bingo = c[i - 4] && c[i - 8]
      end
    end
    if bingo
      puts 'Yes'
      exit
    end
  end
end

puts 'No'