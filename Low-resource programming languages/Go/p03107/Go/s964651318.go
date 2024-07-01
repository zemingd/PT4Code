package main

import (
    "fmt"
    "strings"
)

func main() {
    var s string = scanString()
    var oldArray []string
    var newArray []string = strings.Split(s, "")
    var totalUnifiedCount int = 0
    for {
        oldArray = newArray
        newArray = make([]string, 0)
        var unified bool = false
        for i := 0; i < len(oldArray) - 1; i++ {
            if (oldArray[i] == "0" && oldArray[i + 1] == "1" || oldArray[i] == "1" && oldArray[i + 1] == "0") {
                i++
                unified = true
                totalUnifiedCount++
            } else {
                newArray = append(newArray, oldArray[i])
            }
        }
        newArray = append(newArray, oldArray[len(oldArray) - 1])
        if (unified == false) {
            break
        }
    }
    fmt.Println(2 * totalUnifiedCount)
}

func scanInt() (num int) {
    fmt.Scan(&num)
    return
}
func scanInts(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}
func scanString() (str string) {
    fmt.Scan(&str)
    return
}
func scanStrings(len int) (strs []string) {
    var str string
    for i := 0; i < len; i++ {
        fmt.Scan(&str)
        strs = append(strs, str)
    }
    return
}