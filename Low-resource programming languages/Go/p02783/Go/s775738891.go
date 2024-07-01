package main

import (
	"fmt"
	"os"
)

func run() int {
	var n, a int
	fmt.Scanf("%d %d\n", &n, &a)

	cnt := 0
	for {
		cnt++
		n -= a
		if n <= 0 {
			break
		}
	}
	fmt.Println(cnt)

	return 0
}

func main() {
	os.Exit(run())
}
