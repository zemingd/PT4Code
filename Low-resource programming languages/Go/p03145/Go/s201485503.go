package main

import "fmt"
import "sort"

func main(){
    var a, b, c int

    fmt.Scan(&a)
    fmt.Scan(&b)
    fmt.Scan(&c)

    nums := []int{a, b, c}
    sort.Sort(sort.IntSlice(nums))

    fmt.Printf("%d\n", nums[0]*nums[1]/2)
}
