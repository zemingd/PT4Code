n,k = STDIN.gets.split.map(&:to_i)
input = STDIN.gets.strip.split('')
parsed = []
input.each do |str|
  if !parsed.empty? && parsed[-1][0] == str
    parsed[-1][1] += 1
  else
    parsed.push([str, 1])
  end
end

max = 0
0.upto(parsed.length - 1) do |i|
  len = parsed[i][0] == '0' ? k*2 : k*2+1
  val = parsed[i, len].map{|arr| arr[1]}.inject(&:+)
  max = [val, max].max
end
puts max
