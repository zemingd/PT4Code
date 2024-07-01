package main

import (
	"fmt"
	"sort"
	"strconv"
)

func main() {
	var s string
	var buffer []int

	for {
		if _, err := fmt.Scan(&s); err != nil {
			break
		}

		i, err := strconv.Atoi(s)
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, i)
	}

	sort.Ints(buffer)

	var c int
	i := len(buffer) - 1
	for j := len(buffer) - 2; j != -1; j-- {
		c += (buffer[i] - buffer[j])
		i = j
	}

	fmt.Println(c)
}
