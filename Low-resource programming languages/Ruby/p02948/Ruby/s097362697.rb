n,m = gets.split.map(&:to_i)
ba = []
readlines.map do |i|
  temp = i.chomp.split.map(&:to_i)
  ba << [temp[1], temp[0]]
end

sorted = ba.sort{|a,b| b <=> a}
worked = Hash.new(0)

sum = 0
m.downto(1) do |day|
  0.upto(n-1).each do |cc|
    if m-day+1 >= sorted[cc][1] && worked[cc] < 1
      sum += sorted[cc][0]
      worked[cc] += 1
      break
    end
  end
end

puts sum
