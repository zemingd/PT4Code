n = gets.to_i
cs = n.times.map{gets.chomp.split.map(&:to_i)}
c0 = cs.shift
(0..100).each do |xl|
  (0..100).each do |yl|
    corrent = (c0[0] - xl).abs + (c0[1] - yl).abs + c0[2]
    cs.each do |x,y,h|
      hl = (x-xl).abs + (y-yl).abs + h
      @ans = "#{xl} #{yl} #{hl}"
      break @ans = nil if hl != corrent
    end
    if @ans
      puts @ans
      exit
    end
  end
end
