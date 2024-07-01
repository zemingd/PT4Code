h,w = gets.chomp.split.map(&:to_i)
s = h.times.map{gets.chomp.chars}
  0.upto(h-1) do |i|
    0.upto(w-1) do |j|
      next if i-1 < 0 || i+1 > h-1 || j-1 < 0 || j+1 > w-1
      if s[i][j] == '#'
        ( puts 'No';exit ) if [s[i+1][j],s[i-1][j],s[i][j-1],s[i][j+1]].all?{|n| n == '.'}
      end
    end
  end
puts "Yes"
