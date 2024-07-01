package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
        "strings"
)

func main() {
        sc := bufio.NewScanner(os.Stdin)

        var n int
        if sc.Scan() {
                n, _ = strconv.Atoi(sc.Text())
        }

        as := make([]int, n)
        if sc.Scan() {
                for i, v := range strings.Split(sc.Text(), " ") {
                        as[i], _ = strconv.Atoi(v)
                }
        }

        var count int
        target := 1
        for _, a := range as {
                if a == target {
                        target++
                } else {
                        count++
                }
        }

        if n == count {
                fmt.Println(-1)
        } else {
                fmt.Println(count)
        }
}