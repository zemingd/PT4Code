package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	n, err := strconv.Atoi(stdin.Text())
	if err != nil {
		fmt.Println("err", err)
		os.Exit(1)
	}

	var rmax = 1000000000
	var rmin = rmax

	stdin.Scan()
	r, err := strconv.Atoi(stdin.Text())
	if err != nil {
		fmt.Println("err", err)
		os.Exit(1)
	}
	var diffMax = -r

	for i := 1; i < n; i++ {
		stdin.Scan()
		r, err := strconv.Atoi(stdin.Text())
		if err != nil {
			fmt.Println("err", err)
			os.Exit(1)
		}

		diff := r - rmin
		if diff > diffMax {
			diffMax = diff
		}

		if r < rmin {
			rmin = r
		}
	}

	fmt.Println(diffMax)
}