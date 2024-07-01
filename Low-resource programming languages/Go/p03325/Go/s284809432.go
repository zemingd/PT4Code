package main

import "fmt"

var N int
var a []int

func find2Power(i int) int {
	num := 0
	for i%2 == 0 {
		i /= 2
		num += 1
	}
	return num
}

func main() {
	fmt.Scan(&N)
	tmp := 0
	a = make([]int, N)
	sum := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&tmp)
		sum += find2Power(tmp)
		//		a[i] = tmp
	}
	fmt.Println(sum)
}
