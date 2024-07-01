N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).sort

$h = Hash.new
HONs = [-1, 2, 5, 5, 4, 5, 6, 3, 7, 6]
As.each{|a| $h[HONs[a]] = a}
hons = $h.keys.sort
rhons = hons.sort{|hon1, hon2| $h[hon2] <=> $h[hon1]}

#def p(str) end

lens = [0]
1.upto(N).each do |n|
  if hons.all?{|hon| n < hon}
    lens << nil
  elsif hons.any?{|hon| n < hon}
    lens << hons.find_all{|hon| hon <= n}.map{|hon| lens[n-hon].nil? ? nil : lens[n-hon] + 1}.compact.max
  else
    lens << hons.map{|hon| lens[n-hon].nil? ? nil : lens[n-hon] + 1}.compact.max
  end
end

digits = []
len = lens[-1]
n = N
#p [digits, len, n]

while len > 0
  rhons.each do |hon|
    if hon > n then next end
    if lens[n-hon] == len - 1
      digits << $h[hon]
      len -= 1
      n -= hon
      #p [digits, len, n]
      break
    end
  end
end

puts digits.join('')
