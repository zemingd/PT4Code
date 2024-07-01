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
                for i, a := range strings.Split(sc.Text(), " ") {
                        as[i], _ = strconv.Atoi(a)
                }
        }

        var result int
        for i := 0; i <= n-2; i++ {
                for j := i + 1; j <= n-1; j++ {
                        //result += (as[i] || as[j]) && !(as[i] && as[j])
                        result += as[i] ^ as[j]
                        result %= (1000000000 + 7)
                }
        }

        fmt.Println(result)
}