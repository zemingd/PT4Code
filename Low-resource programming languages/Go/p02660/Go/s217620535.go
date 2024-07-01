package main

import "fmt"

func main() {
    var n int64
    fmt.Scan(&n)
    prime := map[int64]int64{}
    for i := int64(2); i < 1e6; i++ {
        for {
            if n % i != 0 {
                break
            }
            prime[i] += 1
            n /= i
        }
    }
    if n > 1 {
        prime[n] += 1
    }

    ans := 0
    for _, cnt := range prime {
        i := int64(0)
        for {
            i += 1
            cnt -= i
            if cnt < 0 {
                break
            }
            ans += 1
        }
    }
    fmt.Println(ans)
}
