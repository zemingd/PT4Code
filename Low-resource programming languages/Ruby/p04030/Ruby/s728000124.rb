puts $stdin.gets.split("").inject("") {|r, s| r = (s == 'B') ? r[0, [r.length-1,0].max] : r + s  }