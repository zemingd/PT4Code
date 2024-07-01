package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	z := make([]int, n-1)
	ans := make([]int, n)
	for i, _ := range z {
		fmt.Scan(&z[i])
		ans[z[i]-1]++
	}
	for _, v := range ans {
		fmt.Println(v)
	}
}
