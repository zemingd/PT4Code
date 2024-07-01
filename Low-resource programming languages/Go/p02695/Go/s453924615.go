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

    o := [][]int{}
    p := [][]int{}

    init := 0
    a := make([]int, N)
    for i := range a {
        a[i] = init + 1
    }

    t := make([]int, N)
    copy(t, a)
    o = append(o, t)
    for i := N - 1; i >= 0; i-- {
        for j := a[i]; j < M; j++ {
            a[i] = a[i] + 1

            t = make([]int, N)
            copy(t, a)
            o = append(o, t)
        }
    }

    u := make([]int, 4)
    for i := 0; i < Q; i++ {
        q := make([]int, 4)
        for j := range q {
            q[j] = nextInt()
        }
        u = make([]int, 4)
        copy(u, q)
        p = append(p, u)
    }

    max := 0
    total := 0

    for oi := range o {
        total = 0
        for pi := range p {
            if (o[oi][p[pi][1]-1] - o[oi][p[pi][0]-1]) == p[pi][2] {
                total = total + p[pi][3]
            }
        }
        if total > max {
            max = total
        }
    }
    fmt.Fprintln(w, max)
}
