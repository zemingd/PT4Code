X,N = gets.strip.split(nil).map(&:to_i)
if N == 0 then
  m = X
else
  numbers = gets.strip.split(nil).map(&:to_i)
  i = 0
  numbers.any? {|x| x == X}
  if true then
    i += 1
  else
    m = X
  end
  while i >= 1 do
    hokaku = numbers.select{|x| (x-X).abs == i}
      if hokaku.size == 2
        i += 1
      elsif hokaku.size == 1
        if hokaku[0] == X-i then
          m = X+i
        else
          m = X-i
        end
        break
      else
        m = X-i
        break
      end
  end
end
puts m