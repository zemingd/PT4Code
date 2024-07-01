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

    skills := make([][]int, m)
    for j := 1; j < m+1; j++ {
        skills[j-1] = make([]int, n)
        t := 0
        for i := 0; i < n; i++ {
            t += books[i][j]
            skills[j-1][i] = books[i][j]
        }
        if t < x {
            fmt.Fprintln(w, -1)
            return
        }
    }

    c := 0
    bs := make([][]int, m)
    for j := 0; j < m; j++ {
        bs[j] = []int{}
        for b := 0; b < (1 << n); b++ {
            s := 0
            for i := 0; i < n; i++ {
                if (b>>i)&1 == 1 {
                    s += skills[j][i]
                }
            }
            if s >= x {
                bs[j] = append(bs[j], b)
            }
        }
    }

    fmt.Fprintln(w, bs)
    fmt.Fprintln(w, c)
}
