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
	// length, _ := strconv.Atoi(sc.Text())

	var min, diff, i int
	for sc.Scan() {
		input, _ := strconv.Atoi(sc.Text())
		if i == 0 {
			min = input
		} else if i == 1 {
			diff = input - min
			if input < min {
				min = input
			}
		} else {
			if diff < input-min {
				diff = input - min
			}
			if input < min {
				min = input
			}
		}
		fmt.Printf("%d %d\n", min, diff)
		i++
	}
	fmt.Println(diff)
}

