readlines.each{ |line|

    break if line[0] == "0"
    puts line.split.sort.join(" ")

  }
