package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	hw := make([]int, m)
	sum := 0
	for i:=0; i<m; i++{
		fmt.Scan(&hw[i])
		sum += hw[i]
	}

	if n >= sum {
		fmt.Println(n - sum)
	}else{
		fmt.Println(-1)
	}
}