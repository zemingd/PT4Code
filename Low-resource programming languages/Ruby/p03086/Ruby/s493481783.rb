data = $stdin.read.strip
result = []
max = 0
data.size.times do |i|
  if acgt?(data[i])
    result << data[i]
  else
    result = []
  end
  if max < result.size
    max = result.size
  end
end
puts max
def self.acgt?(c)
  %w{A C G T}.include?(c)
end