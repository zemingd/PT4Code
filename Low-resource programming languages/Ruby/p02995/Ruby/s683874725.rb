a,b,c,d = gets.chop.split.map(&:to_i)

class Array
  def lcm
  	self.inject{|a,b| a.lcm(b)}
  end
end

ary=[c,d]
cd_lcm=ary.lcm

count_c=b/c-(a-1)/c
count_d=b/d-(a-1)/d
count_cd=b/(cd_lcm)-(a-1)/(cd_lcm)

puts (b-a+1)-(count_c+count_d-count_cd)
