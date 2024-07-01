while s = gets
  @n = s.chop.to_i
  @r = 0
  @c = 0 

  def s(a, s)
    if a.length == 4
      @r += 1 if a.inject(:+) == @n
    else
      (0..9).each { |x| 
        a.push(x)
        s(a, s + x)
        a.pop
      }   
    end 
  end 

  s(Array.new, 0)
  puts @r
end