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

func main() {
	sc.Split(bufio.ScanWords)

	n := scanInt()
	a := make([]int,n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}

	ans := 0
	for ; len(a) > 0; {
		r := 0
		b := make([]int, 0)
		for ; r < len(a)-1; {
			if a[r] >= a[r+1] {
				a[r], a[r+1] = a[r+1], a[r]
				b = append(b,a[r])
				r++
			} else {
				r++
			}
		}
		a = b
		ans++
	}

	fmt.Println(ans)
}
