n = gets.chomp.to_i
rooms = Array.new(4).map! { Array.new(3).map! { Array.new(10, 0) }}
(1..n).each {
  b, f, r, v = gets.chomp.split(' ').map { |i| i.to_i }
  rooms[b-1][f-1][r-1] += v
}

rooms.each_with_index { |b,bi|
  b.each_with_index { |f,fi|
    f.each_with_index { |r,ri|
      if ri < f.size-1
        print "#{rooms[bi][fi][ri]} "
      else
        print "#{rooms[bi][fi][ri]}\n"
      end
    }
  }
  if bi < b.size
    puts '####################'
  else
    print "\n"
  end
}