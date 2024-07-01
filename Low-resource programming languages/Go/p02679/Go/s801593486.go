package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const N = 1000000007

func main() {
	sc := NewScanner()

	n := sc.ReadInt()
	trueN := n
	cntZeroZero := 0
	battles := make(map[PairInt][]int)

	for i := 0; i < n; i++ {
		a := sc.ReadInt()
		b := sc.ReadInt()
		ra, rb := Ratio(a, b)
		if ra == 0 && rb == 0 {
			cntZeroZero++
			trueN--
		}

		if rb <= 0 {
			ra, rb = ReverseRatio(ra, rb)
			pair := PairInt{ra, rb}
			_, exists := battles[pair]
			if !exists {
				battles[pair] = make([]int, 2)
			}
			battles[pair][1]++
		} else {
			pair := PairInt{ra, rb}
			_, exists := battles[pair]
			if !exists {
				battles[pair] = make([]int, 2)
			}
			battles[pair][0]++
		}
	}

	cnt := 1
	for _, battle := range battles {
		cntSub := Pow(2, uint(battle[0])) + Pow(2, uint(battle[1])) - 1
		cnt = cnt * cntSub % N
	}

	cnt = (cnt + cntZeroZero - 1) % N

	fmt.Println(cnt)
}

type PairInt struct {
	A int
	B int
}

// util
// *   math/simple

func Ratio(x, y int) (int, int) {
	if x == 0 {
		if y == 0 {
			return 0, 0
		}
		return 0, 1
	} else if y == 0 {
		return 1, 0
	}

	sign := 1
	if x > 0 && y < 0 {
		sign = -1
	} else if x < 0 && y > 0 {
		sign = -1
	}

	x = Abs(x)
	y = Abs(y)
	var small, big int
	if x < y {
		small, big = x, y
	} else {
		small, big = y, x
	}
	gcd := GCD(small, big)
	return x / gcd, sign * y / gcd
}

func ReverseRatio(x, y int) (int, int) {
	sign := -1
	if y < 0 {
		sign = 1
	}

	return Abs(y), sign * Abs(x)
}

func GCD(smaller, bigger int) int {
	rem := bigger % smaller
	if rem == 0 {
		return smaller
	}
	return GCD(rem, smaller)
}

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
		answer = answer * base % N
	}
	return answer
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
