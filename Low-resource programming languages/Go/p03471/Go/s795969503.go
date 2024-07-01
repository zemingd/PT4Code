package main

import "fmt"

func main() {
	var n, y int
	fmt.Scan(&n, &y)

	flag := true
	for i := n; i >= 0; i-- {
		k := 0
		for j := n - i; j >= 0; j-- {
			if 10000*i+5000*j+1000*k == y {
				fmt.Println(i, j, k)
				flag = false
			}
			k++
		}
		if flag == false{
			break
		}
	}
	if flag {
		print("-1 -1 -1")
	}
}
