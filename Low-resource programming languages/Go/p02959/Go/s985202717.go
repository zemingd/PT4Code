package main

import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)

    aList := scanSpaceSpeparatedNumbers(n + 1)
    bList := scanSpaceSpeparatedNumbers(n)

    huntCount := 0
    for i, v := range bList {
        if v <= aList[i] {
            // 勇者が倒せる数がi町のモンスター以下の場合は勇者が倒せる数がその勇者の最大値
            huntCount += v
        } else {
            if v - aList[i] < aList[i + 1] {
                huntCount += v
                // 勇者がi町のモンスター以上を倒せる場合,i+1町のモンスターも余剰分倒すので数を変更する
                aList[i + 1] = (aList[i] + aList[i + 1]) - v
            } else {
                huntCount += aList[i] + aList[i + 1]
                // i, i+1の町モンスターが勇者が倒せるモンスターより少ない場合は町にいるモンスターの数すべて倒すので0に変更
                aList[i + 1] = 0
            }
        }
    }
    fmt.Println(huntCount)
}

func scanSpaceSpeparatedNumbers(n int) []int {
    aList := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&aList[i])
    }
    return aList
}

