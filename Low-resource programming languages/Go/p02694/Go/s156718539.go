package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var w = bufio.NewWriter(os.Stdout)

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main() {
    defer w.Flush()

    t := 100

    sc.Split(bufio.ScanWords)
    x := nextInt()

    n := 0
    for t < x {
        t = int(float64(t) * 1.01)
        n++
    }

    fmt.Fprintln(w, n)
}
