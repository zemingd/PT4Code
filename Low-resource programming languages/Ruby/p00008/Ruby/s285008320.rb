while buf=gets
        c=0
        n=buf.to_i
        10.times{|i|
                break if i > n
                10.times{|j|
                        break if i+j > n
                        10.times{|k|
                                break if i+j+k > n
                                10.times{|l|
                                        if i+j+k+l == n
                                                c+=1
                                        end
                                        break if i+j+k+l > n
                                }
                        }
                }
        }
        puts c
end