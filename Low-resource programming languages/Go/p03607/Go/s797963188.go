package main
import (
    "fmt"
    "sort"
)

func solveMeFirst(a uint32,b uint32) uint32{
    if (a < b) {
        return 0
    } else {
        return a - b
    }
}

func main() {
    var n int
    fmt.Scanf("%v\n", &n)
    var v []int
    for i := 0; i < n; i++ {
        var a int
        fmt.Scanf("%v\n", &a)
        v = append(v, a)
    }
    sort.Ints(v)
//    for i := 0; i < n; i++ {
//        fmt.Println(v[i])
//    }
    var c int = 0
    var r int = 0
    var d int = 0
    for i := 0; i < n; i++ {
        if v[i] != c {
            r += d % 2
            c = v[i]
            d = 0
        }
        d += 1
    }
    r += d % 2
    fmt.Println(r)
}

