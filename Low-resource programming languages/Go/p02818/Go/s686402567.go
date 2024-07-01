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
	ABK := scanIntNums()

	AA, AB := checkRemain(int64(ABK[0]), int64(ABK[1]), int64(ABK[2]))
	fmt.Printf("%d %d\n", AA, AB)

}

// example
func checkRemain(A, B, K int64) (AA, AB int64) {
	//var i int64
	if A > K {
		AA = A - K
		AB = B
		return
	}
	if K > A && A+B > K {
		AA = 0
		AB = B - (K - A)
		return
	}
	AA = 0
	AB = 0
	return
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