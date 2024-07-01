def main
  n = gets.to_i
  kosuus = [0] * (10**5+1)
  as = gets.chomp.split(" ").map(&:to_i)
  as.each do |a|
    kosuus[a] += 1
  end
  q = gets.to_i
  q.times do
    b,c = gets.chomp.split(" ").map(&:to_i)
    unless kosuus[b] == 0
      if kosuus[c] == 0
        kosuus[c] = kosuus[b]
      else
        kosuus[c] += kosuus[b]
      end
      kosuus[b] = 0
    end

    sum = 0
    kosuus.each_with_index do |e,i|
      sum += e*i
    end
    puts sum
  end
end

main

