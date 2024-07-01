package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	amax int64 = 10000000000
)

func getMaximumNumberOperations(N int, an []int64) int {
	var (
		largestEvenIndex int
		largestEven      int64
		isLarge          bool
		isEven           bool
		divideTwo        bool
		failed           bool
		counter          int
	)

	failed = false

	counter = 0

	for !failed {
		counter++
		// fmt.Println(an)

		divideTwo = false
		largestEvenIndex = -1
		largestEven = -1
		for i := 0; i < N; i++ {
			isLarge = an[i]*3 > amax
			isEven = an[i]%2 == 0
			if isLarge {
				if isEven {
					an[i] = int64(an[i] / 2)
					divideTwo = true
				} else {
					failed = true
					// fmt.Println("failed")
					break
				}
			} else {
				if isEven && (largestEven < an[i]) {
					largestEven = an[i]
					largestEvenIndex = i
				}
				an[i] = an[i] * 3
			}
		}
		if !divideTwo && (largestEvenIndex != -1) {
			an[largestEvenIndex] = int64(an[largestEvenIndex] / 3 / 2)
		}
		if largestEven == -1 {
			counter--
			break
		}

	}
	// fmt.Println(an)
	return counter
}

func main() {
	// ii int 64:= 10
	// for i := 0; i < 100; i++ {
	// 	fmt.Println(ii)
	// 	ii *= 10
	// }
	var N int
	var s string
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	N, _ = strconv.Atoi(sc.Text())
	sc.Scan()
	s = sc.Text()
	an := make([]int64, N)
	spl := strings.SplitN(s, " ", N)
	for i := 0; i < N; i++ {
		an[i], _ = strconv.ParseInt(spl[i], 10, 64)
	}
	// fmt.Println(an)
	num := getMaximumNumberOperations(N, an)
	fmt.Println(num)
}
