package main

import "fmt"

func main() {
        var a, b, c, d, e, f int
        fmt.Scan(&a, &b, &c, &d, &e, &f)
        maxDense := 0.0
        maxW := 0
        maxS := 0
        for i := 0; 100*a*i <= f; i++ {
                for j := 0; 100*b*j <= f-100*a*i; j++ {
                        w := 100 * (a*i + b*j)
                        cap := e * (a*i + b*j)
                        for k := 0; c*k <= cap && c*k <= f-w; k++ {
                                for l := 0; d*l <= cap-c*k && d*l <= f-w-c*k; l++ {
                                        var den float64
                                        if k == 0 && l == 0 {
                                                den = 0.0
                                        } else {
                                                den = float64(c*k+d*l) / float64(w+c*k+d*l)
                                        }
                                        if maxDense < den {
                                                maxDense = den
                                                maxW = w
                                                maxS = c*k + d*l
                                        }
                                }
                        }
                }
        }
        fmt.Printf("%d %d\n", maxW+maxS, maxS)
}