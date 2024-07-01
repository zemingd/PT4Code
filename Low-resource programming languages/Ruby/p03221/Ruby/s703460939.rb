class City
  attr_accessor :prefec, :year, :spot, :rank
  def initialize prefec,year,spot
    self.prefec = prefec
    self.year = year

    # 自分が何番目に表示されるべきか
    self.spot = spot
  end
  def getID
    return "%06d%06d" % [self.prefec,self.rank]
  end
end

datas = gets.split(" ").map{|nn|nn.to_i}
n = datas[0]
m = datas[1]
cities = []

m.times do|spot|
  datas = gets.split(" ").map{|nn|nn.to_i}
  cities << City.new(datas[0],datas[1],spot)
end

prefecs = {}

cities.each do|cit|
  if prefecs[cit.prefec.to_s] != nil
    prefecs[cit.prefec.to_s] << cit
  else
    prefecs[cit.prefec.to_s] = [cit]
  end
end
prefecs.delete([])
prefecs.each do|cits|
  cits[1].sort!{|nn|nn.year}
  index = 1
  cits[1].each do|cit|
    cit.rank = index
    index += 1
  end
end
cities.sort!{|nn|nn.rank}
cities.each do|cit|
  puts cit.getID
end