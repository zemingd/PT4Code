s,k=gets.chomp.split
d=gets.split.map(&:to_i)
a=""
f=true
s.size.times do |h|
  t=s[h]
  t=t.to_i
  t.upto(9) do |i|
    if !d.include?(i)
      a+=i.to_s
      f=false if i!=t
      break
    end
    if i==9
      1.upto(9) do |j|
        if !d.include?(j)
          a+=j.to_s
          f=false
          0.upto(9) do |j|
            if !d.include?(l)
              a+=l*s.size
              exit
            end
          end
          break
        end
      end
    end
    if !f
      0.upto(9) do |j|
        if !d.include?(l)
          a+=l*[s.size-1, 0].max
          puts a
          exit
        end
      end
    end
  end
end
