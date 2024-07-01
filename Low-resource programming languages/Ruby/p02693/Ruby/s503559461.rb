K,A,B = `dd`.split.map &:to_i
puts B - A >= (K - A % K) % K ? "OK" : "NG"