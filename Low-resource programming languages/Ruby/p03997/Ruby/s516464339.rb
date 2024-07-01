lines = $stdin.read

def gen_square(a,b,h,w)
  [
    [a-2,b-2],[a-1,b-2],[a,b-2],
    [a-2,b-1],[a-1,b-1],[a,b-1],
    [a-2,b  ],[a-1,b  ],[a,b  ],
  ].select do |elem|
    elem[0] >= 0 and elem[1] >= 0 and elem[0] < h-2 and elem[1] < w-2
  end
end

array = lines.split("\n")
H,W,N = array[0].split(" ").map(&:to_i)
ans = {}

array[1..N].each do |line|
  a,b = line.split(" ").map(&:to_i)
  a,b = a-1,b-1
  #puts "(#{a},#{b})"
  points = gen_square(a,b,H,W)
  #p points
  points.each do |coord|
    key = "#{coord[0]}-#{coord[1]}"
    if ans.has_key?(key)
      ans[key] += 1
    else
      ans[key] = 1
    end
  end
end

puts (H-2)*(W-2) - ans.length
(1..9).each do |n|
  puts ans.count{|k,v| v==n}
end
