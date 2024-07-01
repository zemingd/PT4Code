package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var MaxN int

func main() {
	sc := NewScanner()

	MaxN = Pow(10, 12)

	n := sc.ReadInt()

	ans := 0
	primeCounts := PrimeFactorize(n)
	for _, count := range primeCounts {
		ans += f(count)
	}

	fmt.Println(ans)
}

func f(n int) int {
	switch {
	case n < 1:
		return 0
	case n < 3:
		return 1
	case n < 6:
		return 2
	case n < 10:
		return 3
	case n < 15:
		return 4
	case n < 21:
		return 5
	case n < 28:
		return 6
	case n < 36:
		return 7
	case n < 45:
		return 8
	}
	return -1
}

func PrimeFactorize(n int) map[int]int {
	primeCounts := make(map[int]int)

	sqrtMax := int(math.Sqrt(float64(MaxN)))

	for n%2 == 0 {
		primeCounts[2]++
		n /= 2
	}
	for n%3 == 0 {
		primeCounts[3]++
		n /= 3
	}

	flag := true
	for i := 5; n > 1 && i <= sqrtMax; {
		for n%i == 0 {
			primeCounts[i]++
			n /= i
		}

		if flag {
			i += 2
		} else {
			i += 4
		}
		flag = !flag
	}

	if n > 1 {
		primeCounts[n]++
	}

	return primeCounts
}

// util
// *   math/simple

func Abs(x int) int {
	if x >= 0 {
		return x
	}
	return -x
}

func Min(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}
	min := values[0]
	for _, v := range values {
		if v < min {
			min = v
		}
	}
	return min
}

func Max(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}
	max := values[0]
	for _, v := range values {
		if v > max {
			max = v
		}
	}
	return max
}

func Pow(base int, exponent uint) int {
	answer := 1
	for i := uint(0); i < exponent; i++ {
		answer *= base
	}
	return answer
}

func Ceil(divident, dividor int) int {
	quo := divident / dividor
	rem := divident % dividor

	if rem != 0 {
		if (divident > 0 && dividor > 0) ||
			(divident < 0 && dividor < 0) {
			return quo + 1
		}
	}
	return quo
}

// *   sortutil

func ReverseInts(a []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
}

func ReverseStrings(a []string) {
	sort.Sort(sort.Reverse(sort.StringSlice(a)))
}

// *   io

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
	bufSc.Buffer(nil, 100000000)
	return &Scanner{bufSc}
}

func (sc *Scanner) ReadString() string {
	bufSc := sc.bufScanner
	bufSc.Scan()
	return bufSc.Text()
}

func (sc *Scanner) ReadInt() int {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}

func (sc *Scanner) ReadFloat() float64 {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.ParseFloat(text, 64)
	if err != nil {
		panic(err)
	}
	return num
}
