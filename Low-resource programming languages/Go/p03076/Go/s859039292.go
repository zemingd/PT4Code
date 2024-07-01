package main
import (
    "fmt"
    "sort"
)
func main(){
    remainder := []int{}
    ans :=  0
    for i, num:=0, 0;i<5;i++{
        fmt.Scan(&num)
        remainder = append(remainder, num % 10)
        ans += num / 10 * 10
    }
    sort.Ints(remainder)
    index := 0
    for remainder[index] % 10 == 0 {
        index ++
    }
    fmt.Println(ans + remainder[index] + 10 * (4-index))
}
