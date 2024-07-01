package main

import (
	"fmt"
)

// bit全探索

func main(){
	var k int
	fmt.Scan(&k)

	if k  % 2 == 0 {
		fmt.Println(-1)
		return
	}

	n := 7
	for i := 1 ; i <= int(1e6); i++ {
		if n% k == 0 {
			fmt.Println(i)
			return
		}
		n *= 10
		n += 7
		n %= k
	}
	fmt.Println(-1)
}

