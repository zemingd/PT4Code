package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	length, _ := strconv.Atoi(sc.Text())

	var min, max, i int
	for sc.Scan() {
		input, _ := strconv.Atoi(sc.Text())
		if min == 0 {
			min = input
		} else if i == length-1 {
			max = input
		} else if min > input {
			min = input
			max = 0
		} else if max == 0 || max < input {
			max = input
		}
		i++
	}
	fmt.Println(max - min)
}

