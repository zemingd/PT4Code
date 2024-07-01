X, Y, Z, K = STDIN.gets.chomp.split(' ').map(&:to_i)
A = STDIN.gets.chomp.split(' ').map(&:to_i).sort {|a, b| b <=> a}
B = STDIN.gets.chomp.split(' ').map(&:to_i).sort {|a, b| b <=> a}
C = STDIN.gets.chomp.split(' ').map(&:to_i).sort {|a, b| b <=> a}

E = Array.new(0)
A.each { |a|
  B.each { |b|
    E.push(a + b)
  }
}

ESorted = E.sort { |a, b| b <=> a}

Result = Array.new(0)
count = 0
ESorted.each { |e|
  C.each { |c|
    Result.push(e + c)
  }
  # EのK番目以下のものについて考えればよい
  count += 1
  if count >= K
    break
  end
}

ResultSorted = Result.sort { |a, b| b <=> a}

count = 0
ResultSorted.each { |res|
  puts res
  count += 1
  if count >= K
    break
  end
}  