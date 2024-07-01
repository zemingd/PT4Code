package main

import (
	"bufio"
	"fmt"
	"os"
)

var mod = 1000000007

func main() {
	r := bufio.NewReader(os.Stdin)
	var n int
	fmt.Fscan(r, &n)

	ans := "No"
LOOP:
	for i := 1; i <= 9; i++ {
		for j := 1; j <= 9; j++ {
			if i*j == n {
				ans = "Yes"
				break LOOP
			}
		}
	}

	fmt.Println(ans)
}