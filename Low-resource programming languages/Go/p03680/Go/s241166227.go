package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

func main() {
        var n int
        fmt.Scan(&n)
        sc := bufio.NewScanner(os.Stdin)
        sc.Split(bufio.ScanWords)
        s := make([]int, n)
        for i := 0; i < n; i++ {
                sc.Scan()
                a, _ := strconv.Atoi(sc.Text())
                s[i] = a
        }
        step := 0
        pos := 1
        visited := map[int]struct{}{}
        for true {
                pos = s[pos-1]
                step++
                if pos == 2 {
                        break
                }
                if _, v := visited[pos]; v {
                        step = -1
                        break
                }
                visited[pos] = struct{}{}
        }
        fmt.Printf("%d\n", step)
        return
}