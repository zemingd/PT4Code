package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	ok := false
LOOP1:
	for i := 0; i <= N; i++ {
		for j := 0; j <= N-i; j++ {
			if i*4+j*7 == N {
				// fmt.Printf("[dbg] i->%d, j->%d, tot->%d\n", i, j, i*4+j*7)
				ok = true
				break LOOP1
			}
		}
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
