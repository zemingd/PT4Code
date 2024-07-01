h,w = gets.chomp.split.map(&:to_i)
s = h.times.map{gets.chomp.chars}
_k =[-1,1]
ans = ""
0.upto(h-1) do |i|
  0.upto(w-1) do |j|
    if s[i][j] == '#'
      ans = "No"
      _k.each do |k|
        if 0 <= i+k && i+k <= h-1 && 0 <= j+k && j+k <= w-1
          ans = "Yes" if (s[i+k][j] == '#' || s[i][j+k] == '#')
        end
      end
    end
  end
end
puts ans
