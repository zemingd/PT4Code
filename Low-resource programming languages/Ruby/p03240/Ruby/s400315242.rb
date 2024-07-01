N = gets.to_i
ps = []
N.times{|i|
  x, y, h = gets.split.map(&:to_i)
  ps << {
    :x => x,
    :y => y,
    :h => h
  }
}
for x in 0..100
  for y in 0..100
    h = nil
    invalid = false
    ps.each{|p|
      nh = (x - p[:x]).abs + (y - p[:y]).abs + p[:h]
      h = nh if h == nil
      next if nh == h 
      invalid = true
      break
    }
    if invalid == false
      puts "#{x} #{y} #{h}"
      exit
    end
  end
end