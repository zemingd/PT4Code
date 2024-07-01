package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()

	var max, d uint64
	max = 0
	d = 0
	for i, x := range strings.Split(sc.Text(), " ")	{
		a, _ := strconv.ParseUint(x, 10, 64)
		if i == 0 {
			max = a
		}
		if max < a {
			max = a
			d += 0
		} else {
			d += max - a
		}

	}
	fmt.Println(d)
}
