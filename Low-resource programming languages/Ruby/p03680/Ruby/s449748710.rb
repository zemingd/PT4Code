def main
  n = ARGF.gets.to_i

  buttons = []
  n.times do |i|
    buttons << ARGF.gets.to_i - 1
  end

  current = 0
  cnt = 1
  loop do
    next_num = buttons[current]
    if next_num == 1
      puts cnt
      return
    elsif next_num == -1
      puts "-1"
      return
    else
      buttons[current] = -1
      cnt += 1
      current = next_num
    end
  end

  puts "-1"
end

if __FILE__ == $0
  main
end
