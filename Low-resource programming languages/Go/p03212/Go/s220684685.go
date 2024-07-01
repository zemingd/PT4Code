package main

import (
	"fmt"
	"strconv"
	"strings"
)

var count int

func main() {
	var n int
	fmt.Scan(&n)
	if n < 357 {
		fmt.Println(0)
		return
	}
	l := len(strconv.Itoa(n))
	for i := 1; i < l+1; i++ {
		counter("", i, n)
	}

	fmt.Println(count)

}

func counter(num string, l, n int) {
	if l == len(num) {
		if strings.Index(num, "7") < 0 || strings.Index(num, "5") < 0 || strings.Index(num, "3") < 0 {
			return
		}

		if len(num) == l {
			i, _ := strconv.Atoi(num)
			if i > n {
				return
			}

			count++
			return
		}

	}
	counter(num+"3", l, n)
	counter(num+"5", l, n)
	counter(num+"7", l, n)

	return
}