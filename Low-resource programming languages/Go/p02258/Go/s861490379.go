package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	var min, max int
	fmt.Scan(&min)
	fmt.Scan(&max)
	
	var imin int
	if min < max {
		imin = min
	} else {
		imin = max
	}

	s := bufio.NewScanner(os.Stdin)
	for i := 2; i < n; i++ {
		s.Scan()
		r, _ := strconv.Atoi(s.Text())
		if r - imin > max - min {
			max = r
			min = imin
		}
		if r < imin {
			imin = r
		}
	}
	fmt.Println(max - min)
}

