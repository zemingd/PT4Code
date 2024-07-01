loop do
  m, f, r = gets.split.map(&:to_i).map {|i| i < 0 ? nil : i }
  break unless m || f || r
  case
  when !m || !f
    puts ?F
  when m + f >= 80
    puts ?A
  when m + f >= 65
    puts ?B
  when m + f >= 50 || m + f >= 30 && r && r >= 50
    puts ?C
  when m + f >= 30
    puts ?D
  else
    puts ?F
  end
end