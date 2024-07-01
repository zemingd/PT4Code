l, r = gets.split.map{|a|a.to_i}
if (l..r).any?{|a|a%2019 == 0}
  p 0
  exit
end
p (l % 2019) * ((l+1) % 2019)
