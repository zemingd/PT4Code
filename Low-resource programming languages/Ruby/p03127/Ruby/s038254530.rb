n=gets.chomp.to_i
mons=gets.chomp.split(" ").map(&:to_i).sort

before_mons = []
zy = []
while before_mons != mons do
  before_mons = mons.dup
  mons.each_with_index do |m,i|
    if i+1 != n
      mons[(i+1)..-1].each do |mm|
        zyo = mm % m
        zy << zyo if zyo != 0 
      end
    end
  end
  mons << zy.uniq
  mons = mons.flatten.uniq.sort
  break if mons[0] == 1
end
p mons[0]