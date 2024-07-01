package main

import (
	"fmt"
	"os"
)

func main() {
	var k int
	fmt.Scan(&k)

	cnt := 0
	var rec func(x int, ns []int)
	rec = func(x int, ns []int) {
		for i := 0; i < len(ns)-1; i++ {
			if abs(ns[i]-ns[i+1]) > 1 {
				return
			}
		}

		if x == 0 {
			cnt++
			if cnt == k {
				for i := 0; i < len(ns); i++ {
					fmt.Print(ns[i])
				}
				fmt.Println()
				os.Exit(0)
			}
			return
		}

		for i := 0; i < 10; i++ {
			if len(ns) == 0 && i == 0 {
				continue
			}
			rec(x-1, append(ns, i))
		}
	}

	for i := 1; ; i++ {
		rec(i, []int{})
	}
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
