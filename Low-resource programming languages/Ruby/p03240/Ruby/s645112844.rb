n = gets.chomp.to_i
infos = n.times.map do
  gets.chomp.split.map(&:to_i)
end

height_non_zero_info = infos.find{|info| !info.last.zero?}
# 総当りで計算を行っても100 * 100 * 100で間に合うので。

100.times do |x|
  100.times do |y|
    vertex_height = infos[0][2] + (x - height_non_zero_info[0]).abs + (y - height_non_zero_info[1]).abs
    flg = true

    infos.each do |info|
      manhattan_distance = (x - info[0]).abs + (y - info[1]).abs
      height = vertex_height - manhattan_distance <= 0 ? 0 : vertex_height - manhattan_distance
      if height != info[2]
        flg = false
        break
      end
    end

    if flg
      puts "#{x} #{y} #{vertex_height}"
      exit
    end
  end
end