package main

import (
        "bufio"
        "fmt"
        "os"
        "sort"
        "strconv"
        "strings"
)

func main() {
        B()
}

func B() {
        var h, n int
        fmt.Scan(&h, &n)
        a := make([]int, n, n)
        sc := bufio.NewScanner(os.Stdin)
        var s string
        if sc.Scan() {
                s = sc.Text()
        }
        for i, v := range strings.Split(s, " ") {
                a[i], _ = strconv.Atoi(v)
        }

        var sum int
        sort.Sort(sort.Reverse(sort.IntSlice(a)))
        for _, v := range a {
                sum += v
        }
        if sum >= h {
                fmt.Println("Yes")
        } else {
                fmt.Println("No")
        }
}
