package main

import (
    "fmt"
    "math"
    "os"
)

func main() {

    var N int
    fmt.Fscanf(os.Stdin, "%v\n", &N)
    var t, x, y []int
    for i := 0; i < N; i++ {
        var ti, xi, yi int
        fmt.Fscanf(os.Stdin, "%d %d %d\n", &ti, &xi, &yi)
        t = append(t, ti)
        x = append(x, xi)
        y = append(y, yi)
    }

    curx := 0
    cury := 0
    curt := 0
    for i := 0; i < N; i++ {
        dt := int(math.Abs(float64(curt) - float64(t[i])))
        dx := int(math.Abs(float64(curx) - float64(x[i])))
        dy := int(math.Abs(float64(cury) - float64(y[i])))
        if dx+dy > dt {
            fmt.Println("No")
            return
        }
        if dt%2 != (dx+dy)%2 {
            fmt.Println("No")
            return
        }
        curt = t[i]
        curx = x[i]
        cury = y[i]
    }

    fmt.Println("Yes")
}