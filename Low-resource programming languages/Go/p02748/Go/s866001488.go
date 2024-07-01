package main
     
import (
    "fmt"
    "sort"
    "math"
)
 
func main() {
    var A, B, M int
    fmt.Scan(&A, &B, &M)
    a := scanInts(A)
    b := scanInts(B)

    var x, y, c []int
    var tx, ty, tc int

    for i := 0; i < M; i++ {
        fmt.Scan(&tx, &ty, &tc)
        x = append(x, tx)
        y = append(y, ty)
        c = append(c, tc)
    }
    ans := MinIntSlice(a) + MinIntSlice(b)

    for i := 0; i < M; i++ {
        if a[x[i]-1] + b[y[i]-1] - c[i] < ans {
            ans = a[x[i]-1] + b[y[i]-1] - c[i] 
        }
    }

    fmt.Println(ans)
}

func scanStrings(len int) (strings []string) {
    var str string 
    for i := 0; i < len; i++ {
        strings = append(strings, str)
    }
    return
}

func scanInts(len int) (ret []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        ret = append(ret, num)
    }
    return
}

func min(nums ...int) int {
    if len(nums) == 0 {
        panic("funciton min() requires at least one argument.")
    }
    res := nums[0]
    for i := 0; i < len(nums); i++ {
        res = int(math.Min(float64(res), float64(nums[i])))
    }
    return res
}

func MinIntSlice(v []int) int {
    sort.Ints(v)
    return v[0]
  }
  
func MaxIntSlice(v []int) int {
    sort.Ints(v)
    return v[len(v)-1]
}