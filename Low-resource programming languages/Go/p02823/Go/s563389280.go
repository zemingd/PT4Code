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

	// check distance to edge from a or b
	if a-1 < n-b {
		if (b-a-1)/2+a > 0 {
			return (b-a-1)/2 + a
		}
		return b - 1
	}
	if (b-a-1)/2+n-b+1 > 0 {
		return (b-a-1)/2 + n - b + 1
	}
	return n - a

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