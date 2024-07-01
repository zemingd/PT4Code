package main

import (
        "bytes"
        "fmt"
        "strconv"
)

func main() {
        var s string
        fmt.Scan(&s)
        nums := make([]int, 4)
        for i := 0; i < 4; i++ {
                nums[i], _ = strconv.Atoi(s[i : i+1])
        }
        for i := 0; i < 1<<uint(len(nums)-1); i++ {
                if exp, ok := calcExp(nums, i); ok {
                        fmt.Println(exp)
                        return
                }
        }
}

func calcExp(nums []int, selection int) (exp string, found bool) {
        sum := nums[0]
        buf := bytes.NewBufferString(fmt.Sprintf("%d", nums[0]))
        for idx := 1; idx < len(nums); idx++ {
                if selection&1 == 1 {
                        buf.WriteString(fmt.Sprintf("+%d", nums[idx]))
                        sum += nums[idx]
                } else {
                        buf.WriteString(fmt.Sprintf("-%d", nums[idx]))
                        sum -= nums[idx]
                }
                selection >>= 1
        }
        if sum == 7 {
                return buf.String() + "=7", true
        }
        return "", false
}