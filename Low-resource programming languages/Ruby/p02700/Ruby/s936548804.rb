class Player
  attr_accessor :hp, :at, :win
  def initialize(hp,at)
    @hp = hp
    @at = at
    @win = false
  end
  def attack(aite)
    aite.hp -= @at
    @win = true if aite.hp <= 0
  end
  def win?
    @win
  end
end

a,b,c,d = gets.chomp.split.map &:to_i
takahashi = Player.new(a,b)
aoki = Player.new(c,d)

cnt = 1
while takahashi.hp > 0 && aoki.hp >0
  takahashi.attack(aoki) if cnt.odd?
  aoki.attack(takahashi) if cnt.even?
  cnt += 1
end

print "Yes" if takahashi.win?
print "No" if aoki.win?
