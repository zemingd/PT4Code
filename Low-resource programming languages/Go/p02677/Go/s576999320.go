package main

import (
    "bufio"
    "fmt"
    "os"
    "math"
)

var reader *bufio.Reader = bufio.NewReader(os.Stdin)
func scanf(f string, a ...interface{}) { fmt.Fscanf(reader, f, a...) }

func solve(a, b, h, m float64) float64 {
    x := float64(360) / float64(12 * 60) * (h * 60 + m)
    y := float64(360 / 60 * m)
    delta := math.Abs(x - y)
    degrees := delta
    if delta == 180 {
        return a + b
    } else if delta > 180 {
        degrees = 360 - delta
    }
    return math.Sqrt(a * a + b * b - 2.00 * a * b * math.Cos(degrees * math.Pi/180))
}

func main() {
    var a, b, m, h float64
    fmt.Scanf("%v %v %v %v", &a, &b, &h, &m)
    ans := solve(a, b, h, m)
    fmt.Println(ans)
}