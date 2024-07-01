_n = gets.to_i
stones = gets.chomp.split("")

if stones.uniq.size == 1
  # 黒か白の片方しかない場合
  puts 0
else
  count = []

  # 左から白を探していくパターン
  black_flag = false
  stones.each_with_index do |stone, i|
    if stone == "#"
      black_flag = true
    elsif black_flag && stone == "."
      count << stones[i..-1].count(".")
      break
    end
  end

  # 右から黒を探していくパターン
  stones.reverse!
  white_flag = false
  stones.each_with_index do |stone, i|
    if stone == "."
      white_flag = true
    elsif white_flag && stone == "#"
      count << stones[i..-1].count("#")
      break
    end
  end

  stones.reverse! # 元の並びに戻す
  stones.map.with_index { |x, i|
    if x == "." && stones[i+1] == "#"
      count << stones[0..i].count("#") + stones[i+1..-1].count(".")
    end
  }

  if count.empty?
    puts 0
  else
    puts count.min
  end
end
