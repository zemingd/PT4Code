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
	N := inputs[0]

	inputs = scanIntNums()
	var sum int
	for _, input := range inputs {
		sum += input
	}
	if N-sum < 0 {
		fmt.Println(-1)
	} else {
		fmt.Println(N - sum)
	}
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
