N = gets.chomp.to_i

s = []
N.times{|i|
  s[i] = gets.chomp.split("").sort
}

def count(s)
  c = 0
  N.times{|i|
    i.times{|j|
      if s[i] == s[j] then
        c += 1
      end
    }
  }
  c
end

p count(s)
