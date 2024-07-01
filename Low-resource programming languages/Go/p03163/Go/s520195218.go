package main

import "os"
import "fmt"
import "strconv"
import "bufio"
import "strings"


func max(a ...int64) int64 {
    v := int64(-1)
    for i := 0; i < len(a); i++ {
        if v == -1 || v < a[i] {
            v = a[i]
        }
    }
    return v
}

func solve(n int64, w int64, arr [][]int64) int64 {
    dp := make([]int64, w+1)
    t := make([]int64, w+1)
    for j := int64(1); j < w+1; j++ {
        dp[j] = -1
        t[j] = -1
    }
    for i := int64(0); i < n; i++ {
        for j := int64(1); j < w+1; j++ {
            if j-arr[i][0] >= 1 && dp[j-arr[i][0]] != -1 {
                t[j] = max(t[j], dp[j-arr[i][0]]+arr[i][1])
            }
        }
        t[arr[i][0]] = max(t[arr[i][0]], arr[i][1])

        for j := int64(1); j < w+1; j++ {
            dp[j] = max(dp[j], t[j])
            t[j] = -1
        }
    }
    // fmt.Println(dp)
    return max(dp...)
}

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    var n int64 = 0
    var w int64 = 0
    var arr [][]int64
    i := int64(0)
    j := int64(0)
    for scanner.Scan() {
        if i > 0 && i > n {
            break
        }
        if i == 0 {
            strs := strings.Split(scanner.Text(), " ")
            n, _ = strconv.ParseInt(strs[0], 10, 64)
            w, _ = strconv.ParseInt(strs[1], 10, 64)
        } else {
            if i == 1 {
                arr = make([][]int64, n)
            }
            arr[j] = make([]int64, 2)
            strs := strings.Split(scanner.Text(), " ")
            arr[j][0], _ = strconv.ParseInt(strs[0], 10, 64)
            arr[j][1], _ = strconv.ParseInt(strs[1], 10, 64)
            j++
        }
        i++ 
    }
    fmt.Println(solve(n, w, arr))
}