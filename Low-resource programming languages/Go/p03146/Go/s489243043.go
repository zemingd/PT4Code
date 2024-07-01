package main

import (
	"fmt"
)

func main() {
	var s int
	fmt.Scan(&s)
	
  	a := make([]int,0)
  	a = append(a, s)
  	
	for i := 1; ; i++ {
		if a[i-1] % 2 == 0 {
			a = append(a, a[i-1] / 2)
		} else {
			a = append(a, 3 * a[i-1] + 1)
		}
		for j := 0; j < i; j++ {
			if a[i] == a[j] {
				fmt.Println(i+1)
				return
			}
		}
	}
}