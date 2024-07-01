class Range
    def * (other)
      s = [self.first, other.first].max()
      e = [self.last, other.last].min()
      if e > s
        return s..e
      else
        return nil
      end
    end
  end

m = gets.split(" ")[1].to_i

ranges = []
m.times{
    s,e = gets.split(" ").map{|it| it.to_i}
    r = s..e
    laps = false
    ranges.each_index{|i|
        next if laps
        lap = r * ranges[i]
        if lap != nil
            ranges[i] = lap
            laps = true
        end
    }
    ranges.push(r) if !laps
}
puts ranges.size
