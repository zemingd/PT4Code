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

/////////////////////////////////////////
///////////////// Input /////////////////
/////////////////////////////////////////

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
	N := inputs[0]
	M := inputs[1]

	H := scanIntNums()
	outMap := make(map[int]int, N)

	for i := 0; i < M; i++ {
		inputs = scanIntNums() // A : 1~N -> H:0~N-1
		if H[inputs[0]-1] > H[inputs[1]-1] {
			outMap[inputs[1]-1]++
		} else if H[inputs[0]-1] < H[inputs[1]-1] {
			outMap[inputs[0]-1]++
		} else {
			outMap[inputs[0]-1]++
			outMap[inputs[1]-1]++
		}
	}
	fmt.Println(N - len(outMap))
}
