A,B,C,D,E,F = gets.split.map(&:to_i)
G = Hash.new(false)

SugerWater = Struct.new(:a,:b,:c,:d) do
  def weight
    water + suger
  end
  def water
    (a*A + b*B)*100
  end
  def suger
    c*C + d*D
  end
  def key
    water*100+suger
  end
  def concentration
    suger*100.0 / weight
  end
  def is_dissolved
    water * E >= suger * 100
  end
  def is_valid
    if G[key]
      false
    else
      G[key] = true
      is_dissolved && weight <= F
    end
  end
  def values
    [A,B,C,D,E,F,a,b,c,d,weight,suger,water,concentration,is_dissolved]
  end
  def candidates
    [
      SugerWater.new(a+1,b,c,d),
      SugerWater.new(a,b+1,c,d),
      SugerWater.new(a,b,c+1,d),
      SugerWater.new(a,b,c,d+1),
    ].select(&:is_valid)
  end
end

root = SugerWater.new(0,0,0,0)
Q = [root]
weight = 0
suger = 0
concentration = -1

until Q.empty?
  node = Q.shift
  if concentration < node.concentration
    concentration = node.concentration
    weight = node.weight
    suger = node.suger 
  end
  node.candidates.each{ |c| Q.push(c) }
end

puts [weight,suger].join(" ")