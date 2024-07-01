package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Get some numbers from stdio and convert it
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	nums := make([]int, len(numString))
	var err error

	for i := 0; i < len(nums); i++ {
		nums[i], err = strconv.Atoi(numString[i])
		if err != nil {
			panic(err)
		}
	}

	a := nums[0]
	b := nums[1]
	c := nums[2]

	r := c - (a - b)
	if r < 0 {
		r = 0
	}

	fmt.Println(r)
}