while line = gets
  n=line.chomp.split(" ").map(&:to_i).first
  
  hash = {}
  flg = true
  prev = false
  n.times do |i|
    s = gets.chomp
    if hash[s]
      flg = false
    end
    if prev and s[0] != prev
      flg = false
    end
    prev = s[-1]
    hash[s] = true
  end
  puts flg ? "Yes" : "No"
  
end