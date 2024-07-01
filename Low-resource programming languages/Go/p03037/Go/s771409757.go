package main

import (
	"fmt"
)

func main() {
	var n,m int
	fmt.Scan(&n,&m)
	
	ids := make([]bool, n)
	
	l,r := 0,0
	for i := 0; i < m; i++ {
		fmt.Scan(&l,&r)
		l--
		r--
		for j := 0; j < n; j++ {
          if i == 0 && l <= j && j <= r {
            ids[j] = true
          }
			if ids[j] && j < l {
				ids[j] = false
			}
		}
	}
	ans := 0
	for i := range ids {
		if ids[i] {
			ans++
		}
	}
	fmt.Println(ans)
}