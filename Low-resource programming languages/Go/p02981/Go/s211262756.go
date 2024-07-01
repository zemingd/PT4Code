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

	train := nums[0] * nums[1]
	taxi := nums[2]
	if train > taxi {
		fmt.Println(taxi)
	} else {
		fmt.Println(train)
	}
}