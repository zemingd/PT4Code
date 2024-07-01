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

    sc.Split(bufio.ScanWords)
    N := nextInt()
    M := nextInt()
    Q := nextInt()

    init := 0
    a := make([]int, N)
    for i := range a {
        a[i] = init + 1
        init++
    }
    fmt.Fprintln(w, a)
    for i := N - 1; i >= 0; i-- {
        for j := a[i]; j < M; j++ {
            a[i] = a[i] + 1
            fmt.Fprintln(w, a)
        }
        M--
    }
    for i := 0; i < Q; i++ {
        q := make([]int, 4)
        for j := range q {
            q[j] = nextInt()
        }
        fmt.Fprintln(w, q)
    }
}
