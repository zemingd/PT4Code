arr = Array.new(4){ Array.new(3){ Array.new(10, 0) }}
gets.to_i.times{
  b, f, r, v = gets.split.map(&:to_i)
  arr[b-1][f-1][r-1] += v
}

4.times{|b|
  puts "####################" if b != 0
  3.times{|f|
    puts " " + arr[b][f]*" "
  }
}

