package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"

)


func max(a,b int) int{
	if a < b {
		return b
	}
	return a
}

func min(a,b int) int{
	if a < b {
		return a
	}
	return b
}


func search(nums []int) int{

	var ans  = -20000000000
	var m  = nums[0]

	for i:= 1; i<len(nums);i++{
		
		t := nums[i] - m
		ans = max(t,ans)
		m = min(m,nums[i])
	}

	return ans

}


func main() {
	var N int
	var nums []int

	fmt.Scan(&N)

	var sc = bufio.NewScanner(os.Stdin)

	for i:= 0; i < N; i++{
		sc.Scan()
		n,_:= strconv.Atoi(sc.Text())
		nums = append(nums,n)

	}
	
	fmt.Println(search(nums))

}

