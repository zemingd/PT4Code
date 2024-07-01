package main

import "fmt"

func main() {
	arr := make([]int, 5)
	for i := 0; i < 5; i++ {
		fmt.Scan(&arr[i])
	}
	min := arr[0] % 10
	p := 0
	for i := 1; i < 5; i++ {
		tmp := arr[i] % 10
		if min > tmp && tmp > 0 {
			min = tmp
			p = i
		}
	}
	var total int
	for i := 0; i < 5; i++ {
		if i != p {
			tmp := arr[i] / 10
			total += tmp * 10
			if arr[i]%10 != 0 {
				total += 10
			}
		}
	}
	total += arr[p]
	fmt.Println(total)
}