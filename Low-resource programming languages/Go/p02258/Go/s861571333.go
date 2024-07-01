package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, val, min, max := 0, 0, 0, -2147483648
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		n, _ = strconv.Atoi(sc.Text())
	}
	if sc.Scan() {
		min, _ = strconv.Atoi(sc.Text())
	}
	for i := 1; i < n; i++ {
		if sc.Scan() {
			val, _ = strconv.Atoi(sc.Text())
		}
		if max < val-min {
			max = val - min
		}
		if min > val {
			min = val
		}
	}
	fmt.Println(max)
}

