package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()

	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextInt64() int64 {
	sc.Scan()

	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextF64() float64 {
	sc.Scan()

	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}
func f(x int) int {
	if x == 1 {
		return 1
	}
	return f(x/2)*2 + 1
}

func main() {
	sc.Split(bufio.ScanWords)
	s := strings.Split(nextLine(), "")

	low := 0
	high := math.MaxInt32
	num := 753
	for i := 2; i < len(s); i++ {
		val, _ := strconv.Atoi(s[i-2] + s[i-1] + s[i])
		if num > val && val > low {
			low = val
		} else if num < val && val < high {
			high = val
		} else if num == val {
			fmt.Println(0)
			return
		}
	}
	if num-low > high-num {
		fmt.Println(high - num)
	} else {
		fmt.Println(num - low)
	}

}
