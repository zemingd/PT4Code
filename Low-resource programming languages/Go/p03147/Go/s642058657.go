package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var n int
	fmt.Fscan(r, &n)
	hs := make([]int, n)
	for k := range hs {
		fmt.Fscan(r, &hs[k])
	}

	var ans int
	for sk := 0; sk < n; sk++ {
		for hs[sk] > 0 {
			for ek := sk; ek < n; ek++ {
				if hs[ek] == 0 {
					break
				}
				hs[ek]--
			}
			ans++
		}
	}
	fmt.Println(ans)
}
