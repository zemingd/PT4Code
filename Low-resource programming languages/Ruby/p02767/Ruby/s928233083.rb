N=gets.to_i
X=gets.split.map &:to_i
min_location=Float::INFINITY

100.times do |i|
  location = X.map{|e| (e-i)**2}.reduce{|a,b| a+b}
  if min_location > location
    min_location = location
  end
end

puts min_location