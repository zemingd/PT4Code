n = gets.chomp.to_i
if n > 0 then
  ar = gets.chomp.split(" ").map(&:to_i)
  br = gets.chomp.split(" ").map(&:to_i)
  i = 0
  t = 0
  c = 0
  ar.each do |a|
    b = br[i].nil? ? c : br[i] + c
    if a >= b
      t += b
    else
      c = b - a
      t += a
    end
    i += 1
  end
  puts "#{t}"
end
