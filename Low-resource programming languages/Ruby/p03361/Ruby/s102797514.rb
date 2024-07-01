class Numeric
  def clamp( range)
    [[range.begin, self].max, range.end].min
  end
end

h,w = gets.chomp.split(" ").map(&:to_i)
canvas = []
h.times do
  canvas << gets.chomp.split("")
end

h.times do |i|
  w.times do |j|
    if canvas[i][j] == "#"
      surround = [{y:i-1,x:j}, {y:i+1, x:j}, {y:i, x:j-1}, {y:i, x:j+1}].map{|hash| {y:hash[:y].clamp(0..h-1), x:hash[:x].clamp(0..w-1)}}

      check = false
      surround.reject{|hash| hash == {y:i,x:j}}.each do |xy|
        if canvas[xy[:y]][xy[:x]] == "#"
          check = true
          break
        end
      end
      next if check

      puts "No"
      exit

    end
  end
end

puts "Yes"