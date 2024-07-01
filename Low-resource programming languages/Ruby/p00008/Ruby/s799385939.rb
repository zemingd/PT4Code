while ( s = gets ) && ( n = s.to_i ) >= 0 do p ->() {
    res = 0
    10.times { |a|
        10.times { |b|
            10.times { |c|
                10.times { |d|
                    res += ( a + b + c + d == n ? 1 : 0 )
                }
            }
        }
    }
    res
}.call end