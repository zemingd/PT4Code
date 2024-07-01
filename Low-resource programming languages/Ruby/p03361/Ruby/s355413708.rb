h, w = gets.split.map(&:to_i)
ss = Array.new(h) { gets.chomp.chars }
ans = 'Yes'

h.times do |i|
  w.times do |j|
    if ss[i][j] == '#'
      flag = false
      flag = true if j!=0   && ss[i][j-1]=='#'
      flag = true if j!=w-1 && ss[i][j+1]=='#'
      flag = true if i!=0   && ss[i-1][j]=='#'
      flag = true if i!=h-1 && ss[i+1][j]=='#'
      if !flag
        ans="No"
      end
    end
  end
end

puts ans