package main

import "fmt"

func main() {
    var n int
    fmt.Scan(&n)

    var answerN int = n
    var answerCnt int = 0
    for i := 1; i <= n; i++ {
        var val = i
        var cnt = 0
        for val%2 == 0 {
            cnt = cnt + 1
            val = val / 2
        }
        if answerCnt < cnt {
            answerN = i
            answerCnt = cnt
        }
    }

    fmt.Println(answerN)
}