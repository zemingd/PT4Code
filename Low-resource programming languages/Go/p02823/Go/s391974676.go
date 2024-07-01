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
	inputs := scanIntNums()

	fmt.Println(check(inputs[0], inputs[1], inputs[2]))
}

// example
func check(n, a, b int) int {
	if a%2 == b%2 {
		return (b - a) / 2
	}

	if b-1 > n-a {
		return n - a
	}
	return b - 1
}

func scanIntNums() (nums []int) {
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	nums = make([]int, len(numString))
	var err error

	for i := 0; i < len(nums); i++ {
		nums[i], err = strconv.Atoi(numString[i])
		if err != nil {
			panic(err)
		}
	}
	return nums
}