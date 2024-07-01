package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

const (
	BUFSIZE   = 10000000
	MOD       = 1000000007
	INF_INT   = math.MaxInt32
	INF_INT64 = math.MaxInt64
)

var rdr = bufio.NewReaderSize(os.Stdin, BUFSIZE)

func main() {
	solve()
}

func solve() {
	X := ReadInt()
	for i := X; ; i++ {
		if isPrime(i) {
			fmt.Println(i)
			return
		}
	}
}

func isPrime(num int) bool {
	if num%2 == 0 && num != 2 {
		return false
	}
	for i := 3; i*i < num; i += 2 {
		if num%i == 0 {
			return false
		}
	}
	return true
}

func ReadLineInt64() []int64 {
	buf := make([]byte, 0, BUFSIZE)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			fmt.Println(e.Error())
			panic(e)
		}

		buf = append(buf, l...)

		if !p {
			break
		}
	}
	str := strings.Split(string(buf), " ")
	l := len(str)

	ret := make([]int64, l)

	for i, s := range str {
		ret[i] = s2i64(s)
	}
	return ret
}

func ReadLineInt() []int {
	values := ReadLineInt64()
	ret := make([]int, len(values))
	for i, v := range values {
		ret[i] = int(v)
	}
	return ret
}

func ReadInt() int {
	v := ReadLineInt()
	return v[0]
}
func ReadInt2() (int, int) {
	v := ReadLineInt()
	return v[0], v[1]
}
func ReadInt3() (int, int, int) {
	v := ReadLineInt()
	return v[0], v[1], v[2]
}
func ReadInt4() (int, int, int, int) {
	v := ReadLineInt()
	return v[0], v[1], v[2], v[3]
}

func ReadInt64() int64 {
	v := ReadLineInt64()
	return v[0]
}
func ReadInt64_2() (int64, int64) {
	v := ReadLineInt64()
	return v[0], v[1]
}
func ReadInt64_3() (int64, int64, int64) {
	v := ReadLineInt64()
	return v[0], v[1], v[2]
}
func ReadInt64_4() (int64, int64, int64, int64) {
	v := ReadLineInt64()
	return v[0], v[1], v[2], v[3]
}

func s2i64(s string) int64 {
	v, ok := strconv.ParseInt(s, 10, 64)
	if ok != nil {
		panic("Faild : " + s + " can't convert to int64")
	}
	return v
}

// For int64
func Bool2Int64(b bool) int64 {
	if b {
		return 1
	} else {
		return 0
	}
}

func Abs64(v int64) int64 {
	if v < 0 {
		return -v
	}
	return v
}

func Min64(a, b int64) int64 {
	if a > b {
		return b
	} else {
		return a
	}
}

func Max64(a, b int64) int64 {
	if a > b {
		return a
	} else {
		return b
	}
}

func Distance64(a, b int64) int64 {
	return Abs64(a - b)
}

// For int
func Bool2Int(b bool) int {
	if b {
		return 1
	} else {
		return 0
	}
}

func Abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}

func Min(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func Max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func Distance(a, b int) int {
	return Abs(a - b)
}
