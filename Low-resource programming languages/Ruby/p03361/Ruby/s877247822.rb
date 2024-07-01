h, w = gets.chop.split.map(&:to_i)
$table = []
h.times do
  $table << gets.chop.split('')
end

def check(i, j)
  return true if $table[i].nil? || $table[i][j].nil?
  $table[i][j] == "."
end

ans = "Yes"
h.times do |i|
  w.times do |j|
    if $table[i][j] == "#"
      ans = "No" if check(i-1, j) && check(i+1, j) && check(i, j-1) && check(i, j+1)
    end
  end
end

puts ans
