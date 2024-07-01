readlines.each{ |line|

    break if line[0..2] == "0 0"
    puts line.split.sort.join(" ")

  }
