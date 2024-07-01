#!/usr/bin/ruby

def solve(n, m, c, bs, ass)
  ass.select {|as| as.zip(bs).map {|a,b| a * b}.reduce(&:+) + c > 0}.size
end

def each_case(sin)
  n, m, c = sin.gets.chomp.split(" ").map(&:to_i)
  bs = sin.gets.chomp.split(" ").map(&:to_i)
  yield n, m, c, bs, (sin.each_line.map {|ln|
    ln.chomp.split(" ").map(&:to_i)
  })
end

each_case(STDIN) do |*args|
  puts solve(*args).to_s
end


