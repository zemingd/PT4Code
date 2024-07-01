module HinaArare
  def solve
    n = gets.to_i
    s = gets.split(" ")
    for i in 1..n do 
      if s[i] == 'Y'
        return 'Four'
      end
    end
    return 'Three'
  end
end

include HinaArare
puts HinaArare.solve