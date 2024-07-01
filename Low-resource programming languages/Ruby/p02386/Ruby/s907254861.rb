class Dice
  def dice_s(s)
    s[0],s[1],s[4],s[5] = s[4],s[0],s[5],s[1]
    return s
  end

  def dice_e(s)
    s[0],s[2],s[3],s[5] = s[3],s[0],s[5],s[2]
    return s
  end

  def dice_w(s)
    s[0],s[2],s[3],s[5] = s[2],s[5],s[0],s[3]
    return s
  end

  def dice_n(s)
    s[0],s[1],s[4],s[5] = s[1],s[5],s[0],s[4]
    return s
  end

  def dice_b(s)
    s[0],s[1],s[4],s[5]  = s[5],s[4],s[1],s[0]
    return s
  end

  def dice_sp(s)
    s[1],s[2],s[4],s[3] = s[2],s[4],s[3],s[1]
    return s
  end
end

n = gets.chomp.to_i
f = gets.chomp.split.map(&:to_i)
count = 0
dice = Dice.new()

n-1.times {
  s = gets.chomp.split.map(&:to_i)

  case f[0]
  when s[4]; dice.dice_s(s)
  when s[3]; dice.dice_e(s)
  when s[2]; dice.dice_w(s)
  when s[1]; dice.dice_n(s)
  when s[5]; dice.dice_b(s)
  end

  while f[1] != s[1]
    dice.dice_sp(s)
  end

  f == s && count += 1
}
puts count == 0 ? "Yes" : "No"