class Array
    def lcm
      self.inject{|a,b| a.lcm(b)}
    end
end

N = gets.to_i
T = []
for i in 0..N-1
    T[i] = gets.to_i
end

puts T.lcm