#!/usr/bin/ruby

class Monster
  def initialize(owner, hp, power)
    @owner = owner
    @hp = hp
    @power = power
  end

  attr_accessor :owner, :hp, :power

  def attack(attackee)
    attackee.damage(power)
  end

  def damage(damaged_point)
    @hp -= damaged_point
  end

  def die?
    @hp <= 0
  end
end

a, b, c, d = *ARGF.read.chomp.split(/\s+/).collect(&:to_i)

takahashi = Monster.new('Takahashi', a, b)
aoki = Monster.new('Aoki', c, d)

[[takahashi, aoki], [aoki, takahashi]].cycle do |offence, defence|
   offence.attack(defence)
   if defence.die?
     result = defence.owner == 'Aoki' ? 'Yes' : 'No'
     puts result
     break
   end
end