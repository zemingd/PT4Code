a, b, c, d = gets.split.map &:to_i

class Monster
  attr_accessor :life, :power

  def initialize(life, power)
    @life = life
    @power = power
  end

  def attak(other)
    other.life -= power
  end
end

takahashi = Monster.new(a, b)
aoki = Monster.new(c, d)

loop do
  takahashi.attak(aoki)
  if aoki.life <= 0
    puts "Yes"
    break
  end
  aoki.attak(takahashi)
  if takahashi.life <= 0
    puts 'No'
    break
  end
end