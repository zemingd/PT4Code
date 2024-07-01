package main

import "fmt"

func scanNums(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}

func main() {
	var N, X int
	fmt.Scan(&N)
	fmt.Scan(&X)

	a := scanNums(N)

	var d, n int
	for i, v := range(a){
		n = i
		if d + v > X {
			break
		}
		d += v
	}
	fmt.Println(n + 1)
}