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

	var min, max, diff, i int
	for sc.Scan() {
		input, _ := strconv.Atoi(sc.Text())
		if i == length-1 {
			if max == 0 || max < input {
				diff = input - min
			}
		} else if i == 0 {
			min = input
		} else {
			if min > input {
				min = input
				max = 0
			} else if max < input {
				max = input
				if diff < max-min {
					diff = max - min
				}
			}
		}
		i++
	}
	fmt.Println(diff)
}

