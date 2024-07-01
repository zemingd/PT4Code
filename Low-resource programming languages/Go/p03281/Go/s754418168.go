package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	cnt := 0
	ans := 0
	for i:=1; i<=n; i+=2 {
		cnt = 0
		for j :=1; j<=n; j+=2 {
			if i%j == 0 {
				cnt++
			}
		}
		if cnt == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}