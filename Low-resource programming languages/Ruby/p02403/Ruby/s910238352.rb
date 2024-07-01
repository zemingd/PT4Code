readlines.each do |line|

    break if line[0..2] == "0 0"

    line = line.split.map(&:to_i)

    for i in 1..line[0]
      puts "#"*line[1]
    end

    puts ""

  end
