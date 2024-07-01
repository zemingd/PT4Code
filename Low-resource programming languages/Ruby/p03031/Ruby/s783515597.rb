class Light
  def initialize(p_bool, connects)
    @p = p_bool
    @connects = connects
  end

  def shine?(switch_status)
    @connects.map { |a| switch_status[a - 1] }.inject(0, :+) % 2 == @p
  end
end

N, M = gets.chop.split.map(&:to_i)

connects = []
M.times do
  line = gets.chop.split.map(&:to_i)
  line.shift
  connects << line.to_a
end

pr = gets.chop.split.map(&:to_i)

lights = []
connects.each do |c|
  lights << Light.new(pr.shift, c)
end

ans = 0
0.upto(2**N - 1) do |binary_status|
  switch_status = [*(0..(N - 1))].map { |i| binary_status[i] }
  ans += 1 if lights.all? { |light| light.shine?(switch_status) }
end

puts ans
