package main

import "fmt"
import "strings"
import "strconv"

func main() {
    var arr []string = strings.Split(scanString(), "/")
    var year, _ = strconv.Atoi(arr[0])
    var month, _ = strconv.Atoi(arr[1])
    var day, _ = strconv.Atoi(arr[2])
    if year < 2019 || year == 2019 && month < 4 || year == 2019 && month == 4 && day <= 30 {
        fmt.Println("Heisei")
    } else {
        fmt.Println("TBD")
    }
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