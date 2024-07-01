seisu,sinsu=gets.chomp.split(" ").map(&:to_i);
x = seisu/sinsu
keta = 1
while x >= sinsu do
  if keta > 1
    x = x/sinsu
  end
  keta += 1
end
puts keta