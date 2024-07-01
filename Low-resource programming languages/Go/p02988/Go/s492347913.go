package main

import ("fmt"
	    "sort")

func scanNums(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}

func main() {
	var N int
	fmt.Scan(&N)

	nums := scanNums(N)

	var count int 
	for i:=0;i<N-2;i++ {
		a := []int{nums[i], nums[i+1], nums[i+2]}
		sort.Ints(a)
		if a[1] == nums[i+1] {
			count++
		}
	}
	fmt.Println(count)
}
