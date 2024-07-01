def dfs(k,index,s, target)
=begin
  puts "k : #{k}"
  puts "index : #{index}"
  puts "s : #{s}"
  puts "target : #{target}"
=end
  copy = Marshal.load(Marshal.dump(s))
  copy[target].gsub!(/0/, '1')

  if k == 1 || index.empty?
    return [copy]
  end

  ret = []

  index.each do |i|
    ret += dfs(k-1, index - [i], copy, i)
  end

  return ret

end

n,k = gets.chomp.split(" ").map(&:to_i)

s = gets.chomp
one = s.split("0").compact.reject(&:empty?)
zero = s.split("1").compact.reject(&:empty?)

if zero.empty?
  puts one.size
  exit
end

index = [*0...zero.size]

inverted = []

index.size.times do
  i = index.shift
  inverted += dfs(k,index,zero,i)
end

max = 0
inverted.each do |inv|
  max = [max,one.zip(inv).flatten.reject(&:nil?).join.split("0").max_by{|c| c.size}.size].max
end

puts max