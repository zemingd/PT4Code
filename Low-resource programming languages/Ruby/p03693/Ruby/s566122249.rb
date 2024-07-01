a=gets.split.map &:to_i
puts a.*("").to_i%4==0 ? :YES : :NO