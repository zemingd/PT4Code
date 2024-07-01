def lscan; gets.split.map(&:to_i); end

n = gets.to_i
aa = lscan

if aa.sort == aa
  puts 'YES'; exit
end

(0...n).to_a.combination(2) do |a, b|
  aa[a], aa[b] = aa[b], aa[a]
  if aa.sort == aa
    puts 'YES'; exit
  end
  aa[a], aa[b] = aa[b], aa[a]
end
puts 'NO'
