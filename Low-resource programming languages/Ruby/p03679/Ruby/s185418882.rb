X,A,B = `dd`.split.map &:to_i
puts B <= A ? "delicious" : B <= A+X ? "safe" : "dangerous"