N = gets.to_i
PS = (0...N).map{ gets.split.map(&:to_i) }

(0..100).each{ |cx|
  (0..100).each{ |cy|
    hmax = 1000000000*100
    hv = nil
    PS.each{ |x,y,h|
      d = (cx-x).abs + (cy-y).abs
      if h == 0
        hmax = [hmax, d].min
      else
        g = h + d
        if hv && hv != g
          hv = nil; break
        end
        hv = g
      end
    }
    if hv && hv <= hmax
      puts "#{cx} #{cy} #{hv}"; exit
    end
  }
}
fail