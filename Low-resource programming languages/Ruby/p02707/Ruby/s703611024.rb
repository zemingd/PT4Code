def main(str)
  n, as = str.split("\n")
  n = n.to_i
  as = as.split(" ").map(&:to_i)
  ret = n.times.map { 0 }
  as.each { |i| ret[i - 1] += 1 }
  puts ret.map(&:to_s).join("\n")
end

unless ENV["TEST"]
  main($stdin.read.chomp)
  exit(0)
end