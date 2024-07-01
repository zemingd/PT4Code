X, N = gets.split.map(&:to_i)
PS = gets&.split&.map(&:to_i) || []

200.times.each do |i|
  if !PS.include?(X - i)
    puts X - i
    exit
  elsif !PS.include?(X + i)
    puts X + i
    exit
  end
end
