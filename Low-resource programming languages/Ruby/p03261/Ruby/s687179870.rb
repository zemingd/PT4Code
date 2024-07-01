def main
  n = gets.chomp.to_i

  words = []
  n.times do
    w = gets.chomp
    if words.index(w)
      puts 'No'
      return
    end

    last_w = words[-1]
    if last_w && last_w[-1] != w[0]
      puts 'No'
      return
    end

    words << w
  end

  puts 'Yes'
end

if __FILE__ == $0
  main
end
