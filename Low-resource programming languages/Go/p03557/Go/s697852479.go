package main

import (
	"fmt"
	"sort"
)

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func count_lower(arr []int, num int)int{
	count := 0
	for _,value := range arr{
		if num <= value{
			return count
		}
		count++
	}
	return count
}

func count_upper(arr []int, num int)int{
	count := 0
	for _,value := range arr{
		if num >= value{
			return count
		}
		count++
	}
	return count
}


func main() {
	type Sunuke struct {
		top    []int
		middle []int
		bottom []int
	}
	var num int
	sunuke := Sunuke{}
	fmt.Scan(&num)

	sunuke.top = scanNums(num)
	sunuke.middle = scanNums(num)
	sunuke.bottom = scanNums(num)

	sort.Ints(sunuke.top)
	sort.Ints(sunuke.bottom)

	for i, j := 0, len(sunuke.bottom)-1; i < j; i, j = i+1, j-1 {
		sunuke.bottom[i], sunuke.bottom[j] = sunuke.bottom[j], sunuke.bottom[i]
	}
	
	ans := 0
	for i:=0;i<num;i++{
		ans += count_lower(sunuke.top,sunuke.middle[i])*count_upper(sunuke.bottom,sunuke.middle[i])
	}
	fmt.Println(ans)
}