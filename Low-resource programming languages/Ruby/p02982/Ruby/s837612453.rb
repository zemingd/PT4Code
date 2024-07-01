N,D = gets.chomp.split.map(&:to_i)
points = Array.new(N) do
  gets.chomp.split.map(&:to_i)
end


count = 0
points.each_with_index do |point, i|
  points.slice((i+1...points.length)).each do |point_compare|
    total = [point, point_compare].transpose.reduce(0) do |sum, n|
      sum + (n.first - n.last) ** 2
    end

    distance = Math.sqrt(total)
    count += 1 if distance.modulo(1).zero?
  end
end

puts count
