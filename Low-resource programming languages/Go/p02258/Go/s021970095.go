package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	n, err := strconv.Atoi(scanner.Text())
	if err != nil {
		os.Exit(1)
	}
	if n < 2 {
		fmt.Println(0)
		return
	}
	maxv := -10000000000
	minv, err := strconv.Atoi(scanner.Text())
	if err != nil {
		os.Exit(1)
	}
	for scanner.Scan() {
		v, err := strconv.Atoi(scanner.Text())
		if err != nil {
			os.Exit(1)
		}
		if v-minv > maxv {
			maxv = v - minv
		}
		if v < minv {
			minv = v
		}
	}
	fmt.Println(maxv)
}

