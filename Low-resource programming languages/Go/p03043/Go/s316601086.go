// Maybe wrong!

package main

import (
    "bufio"
    "os"
    "strconv"
    "strings"
    "fmt"
    "math"
)

var sc = bufio.NewScanner(os.Stdin)

func gets() string {
    sc.Scan()
    return sc.Text()
}

func toInt(value string) int {
    num, _ := strconv.Atoi(value)
    return num
}

func splitWithInt(value string) []int {
    vals := strings.Split(value, " ")
    nums := make([]int, len(vals))
    for index, elem := range vals {
        nums[index] = toInt(elem)
    }
    return nums
}

func main() {
    inputs := splitWithInt(gets())
    n, k := inputs[0], inputs[1]
    var result, tmp float64
    for i := 1; i <= n; i++ {
        tmp = float64(k / i)
        tmp = math.Log2(tmp)
        tmp = math.Floor(tmp)
        if (tmp < 0) { tmp = 0 }
        tmp++
        result += 1.0 / float64(n) * math.Pow(0.5, tmp)
    }
    fmt.Println(result)
}
