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
        nums := map[int]int{}
        for i := 0; i < n; i++ {
                sc.Scan()
                a, _ := strconv.Atoi(sc.Text())
                nums[a]++
        }
        var rests int
        for _, calledNum := range nums {
                if calledNum%2 == 1 {
                        rests++
                }
        }
        fmt.Printf("%d\n", rests)
}