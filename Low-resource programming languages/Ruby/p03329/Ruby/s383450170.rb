s = gets
n = s.to_i

six = (1..6).map{|i|6**i}
nine = (1..5).map{|i|9**i}
arr = [1, *six, *nine]
list = arr
count = 1
loop do
  count += 1
  list = list.flat_map do |i|
    arr.map {|j| i + j }
  end
  list = list.uniq.select{|i| i <= n}
  break if list.any?{|i|i==n}
end
p count