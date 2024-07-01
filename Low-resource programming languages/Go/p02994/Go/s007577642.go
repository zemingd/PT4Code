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

func abs(a int) int {
	if a<0 {
		return -a
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	
	n := scanInt()
	l := scanInt()

	ans := (l+l+n-1)*n/2

	if l <= 0 && l+n >= 0 {
		fmt.Println(ans)
	} else {
		if abs(l) < abs(l+n-1) {
			fmt.Println(ans-l)
		} else {
			fmt.Println(ans-(l+n-1))
		}
	}
}
