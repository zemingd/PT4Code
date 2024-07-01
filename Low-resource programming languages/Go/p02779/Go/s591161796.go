package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"sync"
)

const (
	MX_INT int64 = math.MaxInt64
	MN_INT int64 = math.MinInt64
)

func main() {
	n := ScanInt64()
	a := ScanInt64Slice(n)
	sort.Slice(a, func(i, j int) bool { return a[i] < a[j] })

	found := false

	for i := int64(1); i < n; i++ {
		if a[i] == a[i-1] {
			found = true
		}
		break
	}

	if found {
		P("NO")
	} else {
		P("YES")
	}

	close(O)
	oWg.Wait()
}

/*********************** I/O ***********************/

var O chan string
var in *bufio.Scanner
var oWg *sync.WaitGroup
var P func(a ...interface{}) (n int, err error)

func init() {
	P = fmt.Println

	in = bufio.NewScanner(os.Stdin)
	in.Buffer(make([]byte, 1024), int(1e9))
	in.Split(bufio.ScanWords)

	O = make(chan string, 16)
	oWg = &sync.WaitGroup{}
	oWg.Add(1)

	writer := bufio.NewWriterSize(os.Stdout, int(2e+5))
	go func(writer *bufio.Writer) {
		defer oWg.Done()
		defer writer.Flush()

		for line := range O {
			writer.WriteString(line + "\n")
		}
	}(writer)
}

func ScanWord() string {
	in.Scan()
	return in.Text()
}

func ScanStringSlice(n int64) []string {
	length := int(n)
	s := make([]string, n)
	for i := 0; i < length; i++ {
		s[i] = ScanWord()
	}
	return s
}

func ScanInt64() int64 {
	intStr := ScanWord()
	i, err := strconv.ParseInt(intStr, 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func ScanInt() int {
	intStr := ScanWord()
	i, err := strconv.Atoi(intStr)
	if err != nil {
		panic(err)
	}
	return i
}

func ScanInt64Slice(n int64) []int64 {
	length := int(n)
	arr := make([]int64, n)
	for i := 0; i < length; i++ {
		arr[i] = ScanInt64()
	}
	return arr
}

/*********************** Utils ***********************/

func Mx(args ...int64) int64 {
	maxVal := MN_INT
	for _, v := range args {
		if v > maxVal {
			maxVal = v
		}
	}
	return maxVal
}

func Mn(args ...int64) int64 {
	minVal := MX_INT
	for _, v := range args {
		if v < minVal {
			minVal = v
		}
	}
	return minVal
}

func LCM(a, b int64) int64 {
	return a / GCD(a, b) * b
}

func GCD(a, b int64) int64 {
	if (a == 0) {
		return b
	}
	return GCD(b%a, a)
}

func S(v interface{}) string {
	return fmt.Sprintf("%v", v)
}
