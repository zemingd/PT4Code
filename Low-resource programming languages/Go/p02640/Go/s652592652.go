package main

import "fmt"

func main() {
	arr := scanNums(2)
	X := arr[0]
	Y := arr[1]
	res := ""
	assumedA := 2*X - Y/2
	assumedB := Y/2 - X
	if Y%2 != 0 {
		res = "No"
	} else {
		if assumedA >= 0 && assumedB >= 0 {
			res = "Yes"
		} else {
			res = "No"
		}
	}
	fmt.Print(res)
}
func CalcNum(tate int, yoko int, A int, B int, dp *map[[2]int]int) int {
	if (*dp)[[2]int{tate, yoko}] != 0 {
		return (*dp)[[2]int{tate, yoko}]
	}
	return yoko*CalcNum(tate-1, yoko, A, B, dp) + tate*CalcNum(tate, yoko-1, A, B, dp)
}
func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
