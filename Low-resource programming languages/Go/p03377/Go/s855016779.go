package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    // "sort"
)
var sc = bufio.NewScanner(os.Stdin)


func main() {
    sc.Split(bufio.ScanWords)
    // code goes here
    A, B, X := nextInt(), nextInt(), nextInt()
    
    if A <= X && X <= A + B {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
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