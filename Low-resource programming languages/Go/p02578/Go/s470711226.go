package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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
        n := nextInt()
        var a []int
        for i := 0; i < n; i++ {
                a = append(a, nextInt())
        }

        ans := 0
        for i := 1; i < n; i++ {
                if a[i-1] > a[i] {
                        ans += a[i-1] - a[i]
                        a[i] = a[i-1]
                }
        }

        fmt.Printf("%d\n", ans)
}