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

    n := nextInt()
    m := nextInt()
    x := nextInt()

    books := make([][]int, n)

    for i := range books {
        books[i] = make([]int, m+1)
        for j := range books[i] {
            books[i][j] = nextInt()
        }
    }

    max := -1
    for b := 0; b < (1 << n); b++ {
        cost := 0
        skills := make([]int, m)
        for i := 0; i < n; i++ {
            if (b>>i)&1 == 1 {
                cost += books[i][0]
                for j := 0; j < m; j++ {
                    skills[j] += books[i][j+1]
                }
            }
        }
        ok := true
        for i := range skills {
            if skills[i] < x {
                ok = false
            }
        }

        // fmt.Fprintln(w, ok)
        // fmt.Fprintln(w, max)
        // fmt.Fprintln(w, cost)
        // fmt.Fprintln(w, "----")
        if ok {
            if (max == -1) || (max > cost) {
                max = cost
            }
        }
    }
    fmt.Fprintln(w, max)
}
