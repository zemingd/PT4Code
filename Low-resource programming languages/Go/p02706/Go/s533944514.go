package main

import (
	"fmt"
)

func main() {
	var n,m int
	fmt.Scan(&n,&m)
	
	sum,days := 0,0
	for i := 0; i < m; i++ {
		fmt.Scan(&days)
		sum += days
	}
	if sum > n {
		fmt.Println("-1")
	} else {
		fmt.Println(n - sum)
	}
}