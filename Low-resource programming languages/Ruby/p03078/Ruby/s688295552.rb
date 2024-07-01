x, y, z, k = gets.split(' ').map(&:to_i)
as = gets.split(' ').map(&:to_i)
bs = gets.split(' ').map(&:to_i)
cs = gets.split(' ').map(&:to_i)

# Ptn.2
anss = []
as.each do | a |
  bs.each do | b |
    ab = a+b 
    cs.each do | c |
      anss << ab+c
    end
  end
end
puts anss.sort{|n,m|m<=>n}