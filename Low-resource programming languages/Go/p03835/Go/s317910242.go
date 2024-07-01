package main

import (
        "fmt"
)

func main() {
        var k, s int
        fmt.Scanf("%d %d", &k, &s)

        var cnt int

        for i := 0; i <= k; i++ {
                for j := 0; j <= k && i+j <= s; j++ {
                        for l := 0; l <= k; l++ {
                                if i+j+l == s {
                                        cnt++
                                }
                        }
                }
        }
        fmt.Println(cnt)

}
