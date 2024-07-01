x,n = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

diff = 0

while true do
  [x - diff, x + diff].each do |m|
    if !ps.include? m
      puts m
      exit 0
    end
  end

  diff += 1
end

