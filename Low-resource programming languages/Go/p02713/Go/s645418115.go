package main

import (
        "fmt"
)

var divisor[201]map[int]bool

func makeDivisor() {

        for i := 0; i <= 200; i++ {
                divisor[i] = make(map[int]bool)
        }
        for v := 1; v <= 200; v++ {
                for m := 1; v * m <= 200; m++ {
                        divisor[v*m][v] = true
                }
        }
}

func gcd(a,b,c int) int {
        max := 1
        for av, _ := range divisor[a] {
                if divisor[b][av] && divisor[c][av] && av > max {
                        max = av
                }
        }
        return max
}

func main() {
        makeDivisor()

        var K int
        fmt.Scanf("%d", &K)
        var sum uint64
        for a := 1; a <= K; a++ {
                for b := 1; b <= K; b++ {
                        for c := 1; c <= K; c++ {
                                sum += uint64(gcd(a,b,c))
                        }
                }
        }
        fmt.Printf("%v\n", sum)
}