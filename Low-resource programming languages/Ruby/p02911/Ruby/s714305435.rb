attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

tmp = attrs.shift
N = tmp.shift
K = tmp.shift
Q = tmp.shift
A = attrs.flatten

# N は 1 から始まるが配列は 1 はじまりである点に注意
h = Hash.new
A.each do |i|
  if h[i] == nil then
    h[i] = 1
  else
    h[i] += 1
  end
end

for i in 0..(N - 1) do
    if h[i + 1] != nil then
        if (K - Q + h[i + 1]) > 0 then
            puts "Yes"
        else
            puts "No"
        end
    else
        if (K - Q) > 0 then
            puts "Yes"
        else
            puts "No"
        end
    end
end
