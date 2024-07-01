package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var m = 0
	var d = -1000000000
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	var n, _ = strconv.Atoi(stdin.Text())

	for i := 0; i < n; i++ {
		stdin.Scan()
		var v, _ = strconv.Atoi(stdin.Text())
		if n == i+1 && d == 0 {
			d = v - m
		}
		if m == 0 {
			m = v
			continue
		}
		if d <= v-m {
			d = v - m
		}

		if m >= v {
			m = v
		}
	}
	fmt.Println(d)
}

