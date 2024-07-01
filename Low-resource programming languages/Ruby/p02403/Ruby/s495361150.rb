loop{
  a,b = STDIN.gets.split.map(&:to_i)
  break if a == 0 && b == 0
  a.times{
    b.times{
      print '#'
    }
    puts
  }
  puts
}