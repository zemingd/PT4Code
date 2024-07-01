n, k = gets.chomp.split.map(&:to_i)
al = gets.chomp.split.map(&:to_i)

seki = al[0...k].inject(&:*)
sekil = [seki]
(n-k).times do |i|
  i += 1

  seki = seki / al[i-1] * al[k+i-1]
  sekil.push(seki)
end

(sekil.length-1).times do |i|
  puts sekil[i] < sekil[i+1] ? "Yes" : "No"
end