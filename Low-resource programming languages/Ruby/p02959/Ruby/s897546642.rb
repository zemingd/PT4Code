# https://atcoder.jp/contests/abc135/tasks/abc135_c



N = gets.to_i
monsters = gets.split.map(&:to_i)
fighters = gets.split.map(&:to_i)

ans = 0
fighters.each_with_index do |fighter, idx|
  this_city_monster = monsters[idx]
  next_city_monster = monsters[idx + 1]
  if fighter > this_city_monster
    ans += this_city_monster
    remain = fighter - this_city_monster
    monsters[idx + 1] = [next_city_monster - remain, 0].max
    ans += [remain, next_city_monster].min
  else
    ans += fighter
  end
end
puts ans
