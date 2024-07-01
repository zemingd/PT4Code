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
// Input number
func scanIntNum() (num int) {
	sc.Scan()

	num, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return num
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

func main() {
	inputs := scanIntNums()
	N := inputs[0]
	K := inputs[1]
	sumap := make(map[int]int, N)

	for i := 0; i < K; i++ {
		_ = scanIntNum()
		A := scanIntNums()
		for _, su := range A {
			sumap[su]++
		}
	}

	var ans int
	for i := 1; i <= N; i++ {
		if sumap[i] == 0 {
			ans++
		}
	}
	fmt.Println(ans)

}
