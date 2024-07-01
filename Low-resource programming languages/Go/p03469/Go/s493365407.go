package main

import (
    "fmt"
    "os"
)

func main() {

    var N, Y int
    fmt.Fscanf(os.Stdin, "%d %d", &N, &Y)

    for a := 0; a <= N; a++ {
        for b := 0; b <= N; b++ {
            if a+b > N {
                break
            }
            remain := Y - a*10000 - b*5000
            if remain < 0 {
                break
            }
            c := remain / 1000
            if a+b+c != N {
                continue
            }
            fmt.Printf("%d %d %d\n", a, b, c)
            return
        }
    }
    fmt.Printf("-1 -1 -1\n")
}