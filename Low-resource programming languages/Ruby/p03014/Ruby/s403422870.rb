H, W = gets.strip.split.map(&:to_i)
s = []
H.times do
  s << gets
end

counts = Array.new(H, 0)

counts.map!{|_| Array.new(W, 0)}

H.times do |i|
  W.times do |j|
    if s[i][j] == '.'
      counts[i][j] = 1
      (j-1).downto(0) do |k|
        if s[i][k] == '.'
          counts[i][j] += 1
        else
          break
        end
      end
      (j+1).upto(W-1) do |k|
        if s[i][k] == '.'
          counts[i][j] += 1
        else
          break
        end
      end

      (i-1).downto(0) do |l|
        if s[l][j] == '.'
          counts[i][j] += 1
        else
          break
        end
      end
      (i+1).upto(H-1) do |l|
        if s[l][j] == '.'
          counts[i][j] += 1
        else
          break
        end
      end  
    end
  end
end

puts counts.max.max