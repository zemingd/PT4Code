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

func main() {
	inputs := scanIntNums()
	K := inputs[0]
	N := inputs[1]

	distances := scanIntNums()

	var dist int
	max := K - distances[N-1] + distances[0]
	for i := 0; i < N-1; i++ {
		dist = distances[i+1] - distances[i]
		if max < dist {
			max = dist
		}
	}

	fmt.Println(K - max)
}
