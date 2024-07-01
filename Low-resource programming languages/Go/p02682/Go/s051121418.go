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
    sc.Split(bufio.ScanWords)
    defer w.Flush()

    a := nextInt()
    b := nextInt()
    c := nextInt()
    k := nextInt()

    t := 0
    if k < a {
        t = k
        k = 0
    } else {
        t = a
        k -= a
    }

    if k < b {
        k = 0
    } else {
        k -= b
    }

    if k < c {
        t -= k
    } else {
        t -= c
    }
    fmt.Fprintln(w, t)
}
