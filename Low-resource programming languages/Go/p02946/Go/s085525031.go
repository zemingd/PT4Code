package main

import (
	"bytes"
	"fmt"
	"strconv"
)

func main() {
	var k, x int
	fmt.Scan(&k, &x)
	min := x - k + 1
	if min < -1000000 {
		min = -1000000
	}
	max := x + k - 1
	if max > 1000000 {
		max = 1000000
	}
	var buffer bytes.Buffer
	for i := min; i <= max; i++ {
		n := strconv.Itoa(i)
		buffer.WriteString(n)
		if i != max {
			buffer.WriteString(" ")
		}
	}
	fmt.Println(buffer.String())
}
