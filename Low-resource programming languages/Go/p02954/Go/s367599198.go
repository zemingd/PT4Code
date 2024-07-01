package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func printInts(a []int) {
	for i, e := range a {
		fmt.Print(e)
		if i != len(a)-1 {
			fmt.Print(" ")
		}
	}
	fmt.Println()
}

func main() {
	sc.Split(bufio.ScanWords)
	
	var s string
	fmt.Scan(&s)

	ans := make([]int, len(s))

	c1,c2 := 0,0
	f := true
	r,l := 0,0
	for i := 0; i < len(s)-1; i++ {
		if s[i] == s[i+1] && i+1 != len(s)-1 {
			if f {
				c1++
			} else {
				c2++
			}
		} else {
			if f {
				r, l = i, i+1
				c1++
				c2++
				f = false
				if i+1 == len(s)-1 {
					ans[r] = (c1-1)/2 + c2/2 + 1
					ans[l] = c1/2 + (c2-1)/2 + 1
					f = true
					c1, c2 = 0, 0
				}
			} else {
				if i+1 == len(s)-1 {
					c2++
				}
				ans[r] = (c1-1)/2 + c2/2 + 1
				ans[l] = c1/2 + (c2-1)/2 + 1
				f = true
				c1, c2 = 0, 0
			}
		}
	}

	printInts(ans)

}
