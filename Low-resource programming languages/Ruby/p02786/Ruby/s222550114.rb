H=gets.chomp.to_i
$count = 0

def monster(hp)
  $count = $count + 1
  if hp > 1 then
    newhp = hp / 2
    monster(newhp)
    monster(newhp)
  else
    # 勝利
    return
  end
end

def kougeki(hp)
  n = Math.log2(hp)
  i = 1
  $count = i
  1.upto(n) do |tmp|
    i = i * 2
    $count = $count + i
  end
end

kougeki(H)
puts $count