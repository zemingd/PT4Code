def main
  n = gets.to_i
  as = gets.chomp.split(" ").map(&:to_i)
  q = gets.to_i
  bcs = []
  q.times do
    bc = gets.chomp.split(" ").map(&:to_i)
    bcs.push bc
  end
  t = as.tally

  q.times do |i|
    b = bcs[i][0]
    c = bcs[i][1]
    unless t[b].nil?
      unless t[c].nil?
        t[c] += t[b]
      else
        t[c] = t[b]
      end
      t[b] = nil
    end

    sum = 0
    t.each_pair do |k, v|
      next if v.nil?
      sum += k*v
    end
    puts sum
  end
end

main

