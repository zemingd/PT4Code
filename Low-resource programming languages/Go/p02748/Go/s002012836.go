package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const (
	initialBufSize = 10000
	maxBufSize     = 10000000
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	return sc
}()

//var sc = bufio.NewScanner(os.Stdin)

func main() {
	inputs := scanIntNums()
	//A := inputs[0]
	//B := inputs[1]
	M := inputs[2]

	aprices := scanIntNums()
	bprices := scanIntNums()

	coupon := make([][]int, M)
	for i := 0; i < M; i++ {
		coupon[i] = scanIntNums()
	}

	minPrice := 200000
	var tmp int
	// check coupon
	for i := 0; i < M; i++ {
		tmp = aprices[coupon[i][0]-1] + bprices[coupon[i][1]-1] - coupon[i][2]
		if tmp < minPrice {
			minPrice = tmp
		}
	}

	// check min
	nMin := min(aprices) + min(bprices)
	if nMin < minPrice {
		minPrice = nMin
	}
	fmt.Println(minPrice)
}

func min(nums []int) int {
	minNum := 100000
	for i := 0; i < len(nums); i++ {
		if minNum > nums[i] {
			minNum = nums[i]
		}
	}
	return minNum
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
