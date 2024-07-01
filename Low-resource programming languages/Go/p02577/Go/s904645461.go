package main

import (
        "fmt"
)

func solution(n string) string {

        sum := 0

        for i := range n {
                sum += int(n[i] - '0')
        }

        if sum%9 == 0 {
                return "Yes"
        }
        return "No"
}

func main() {
        var n string
        fmt.Scan(&n)
        fmt.Println(solution(n))
}