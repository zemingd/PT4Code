x = gets.to_i
is_prime = [true] * 200000

(2...200000).each{|a|
    if is_prime[a]
        ((a * 2)...200000).step(a){|m|
            is_prime[m] = false
        }
    end
}

(x...200000).each{|n|
    if is_prime[n]
        puts n
        break
    end
}
