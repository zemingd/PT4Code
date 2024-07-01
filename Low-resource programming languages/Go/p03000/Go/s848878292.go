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
	fmt.Println(a)

	var d, n int
	for i, v := range(a){
		if d + v > X {
			break
		}
		n = i
		d += v
	}
	fmt.Println(n + 1)
}