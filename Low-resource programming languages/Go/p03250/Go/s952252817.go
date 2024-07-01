package main

import (
    "fmt"
    "sort"
)    

func main(){
    nums := make([]int, 3)
    fmt.Scanf("%d %d %d", &nums[0], &nums[1], &nums[2])
    
    sort.Ints(nums)
    fmt.Println(10*nums[2] + nums[1] + nums[0])
}
