package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    "math"
    // "sort"
)
var sc = bufio.NewScanner(os.Stdin)


func main() {
    sc.Split(bufio.ScanWords)
    // code goes here
    N := nextInt()
    T, A := nextFloat(), nextFloat()
    
    best := 0
    bestval := 0.0
    for i := 1; i <= N; i += 1 {
        h := nextFloat()
        t := T - h*0.006
        if best == 0 || math.Abs(A-t) < bestval {
            bestval = math.Abs(A-t)
            best = i
        }
    }
    fmt.Println(best)
}



func nextInt() int {
    sc.Scan()
    v, e := strconv.Atoi(sc.Text())
    if e != nil { panic(e) }
    return v
}
func nextInt64() int64 {
    sc.Scan()
    v, e := strconv.ParseInt(sc.Text(), 10, 64)
    if e != nil { panic(e) }
    return v
}
func nextString() string {
    sc.Scan()
    return sc.Text()
}
func nextFloat() float64 {
    sc.Scan()
    v, e := strconv.ParseFloat(sc.Text(), 64)
    if e != nil { panic(e) }
    return v
}
func Max(x, y int) int { if x > y { return x }; return y }
func Min(x, y int) int { if x < y { return x }; return y }
func Abs(x int) int { if x > 0 { return x }; return -x }

