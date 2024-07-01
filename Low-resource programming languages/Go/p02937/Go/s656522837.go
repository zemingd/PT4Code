package main

import (
        "bufio"
        "fmt"
        "os"
)

var sc = bufio.NewScanner(os.Stdin)

func readLine() string {
    sc.Scan()
    return sc.Text()
}

func lowerBound(a []int, x int) int {
        n := len(a)
        ok := n
        ng := -1
        for ok-ng > 1 {
                mid := (ok + ng) / 2
                if a[mid] >= x {
                        ok = mid
                } else {
                        ng = mid
                }
        }
        return ok
}

func main() {
        var s string
        var t string

        s = readLine()
        t = readLine()

        idxs := make([][]int, 256)

        for i := 0; i < len(s); i++ {
                idxs[s[i]] = append(idxs[s[i]], i)
        }

        n := int64(len(s))
        cur := int64(0)
        ng := false

        for i := 0; i < len(t); i++ {
                is := idxs[t[i]]
                if is == nil || len(is) == 0 {
                        ng = true
                        break
                }
                base := (cur / n) * n

                nidx := lowerBound(is, int(cur%n))
                if nidx == len(is) {
                        cur = base + int64(is[0]) + n + 1
                } else {
                        cur = base + int64(is[nidx]) + 1
                }
        }
        if ng {
                fmt.Println(-1)
        } else {
                fmt.Println(cur)
        }
}