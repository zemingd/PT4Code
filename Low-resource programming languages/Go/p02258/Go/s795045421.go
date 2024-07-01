package main

import (
        "bufio"
        "fmt"
        "io"
        "math"
        "os"
        "strconv"
)

func main() {
        fmt.Println(run(os.Stdin))
}

func run(in io.Reader) int {
        sc := bufio.NewScanner(in)

        sc.Scan()
        n, err := strconv.Atoi(sc.Text())
        if err != nil {
                panic(err)
        }

        r := make([]int, n)

        for i := 0; i < n; i++ {
                sc.Scan()
                v, err := strconv.Atoi(sc.Text())
                if err != nil {
                        panic(err)
                }
                r[i] = v
        }

        return maximumProfit(n, r)
}

func maximumProfit(n int, r []int) int {
        diff := math.MinInt32

        for i := 0; i < n; i++ {
                for j := i + 1; j < n; j++ {
                        if r[j]-r[i] > diff {
                                diff = r[j] - r[i]
                        }
                        if r[j] < r[i] {
                                i = j
                        }
                }
        }

        return diff
}

