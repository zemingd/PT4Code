def solve(height, width, h, w)
  height * width - (h * width + w * height - h * w)
end

def each_case(sin)
  height, width = sin.gets.chomp.split(" ").map(&:to_i)
  while ln = sin.gets
    h, w = ln.chomp.split(" ").map(&:to_i)
    yield height, width, h, w
  end
end

each_case(STDIN) do |*args|
  puts solve(*args).to_s
end


