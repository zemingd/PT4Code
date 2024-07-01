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
	maxBufSize     = 100000000
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
	A := inputs[0]
	B := inputs[1]
	//C := inputs[2]
	K := inputs[3]

	var ans int
	if K > A {
		if K-A-B >= 0 {
			ans = A - (K - A - B)
		} else {
			ans = A
		}
	} else {
		ans = K
	}
	fmt.Println(ans)
}
