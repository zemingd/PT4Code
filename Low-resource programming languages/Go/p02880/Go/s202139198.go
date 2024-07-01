package main

import (
	"fmt"
)

func main() {
	var n,v int
	var ans string
	fmt.Scan(&n)
	
	v = 0
	for i := 1; i < 10; i++ {
		//nがiで割り切れれば
		if n % i == 0 {
			//nをiで割った商が答え
			v = n / i
		}
	}
	
	if v == n || v > 9 {
		ans = "No"
	} else {
		ans = "Yes"
	}
	
	fmt.Printf("%s", ans)
}