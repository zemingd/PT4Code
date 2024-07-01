package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	input := scanIntNum()
	fmt.Println(fatCalc(input))
}

// example
func calc(target int) (pn int) {
	pn = target
	return pn
}

func fatCalc(target int) int {
	for i := target; ; i++ {
		if fatCheck(i) {
			return i
		}
	}
}

func fatCheck(target int) bool {
	limit := int(math.Sqrt(float64(target)))

	for i := 2; i <= limit; i++ {
		if target%i == 0 {
			return false
		}
	}

	return true
}

func scanIntNum() (num int) {
	sc.Scan()

	num, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return num
}