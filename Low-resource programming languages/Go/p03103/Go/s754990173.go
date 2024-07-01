package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	nextReader = NewScanner()
	line1 := nextInt()
	N := line1[0]
	M := line1[1]

	var ints [][]int
	for i := 0; i < N; i++ {
		ints = append(ints, nextInt())
	}

	var sortedVal []int
	for i := 0; i < N; i++ {
		sortedVal = append(sortedVal, ints[i][0])
	}
	sort.Ints(sortedVal)

	slice := ints
	sort.SliceStable(ints, func(i, j int) bool { return ints[i][0] < ints[j][0] })

	var sum int64
	for i := 0; i < N; i++ {
		//for j := 0; j < N; j++ {
		//	if ints[j][0] == sortedVal[i] {
		//		index = j
		//		break
		//	}
		//}

		if slice[i][1] <= M {
			sum += int64(slice[i][1] * slice[i][0])
			M -= ints[i][1]
		} else {
			sum += int64(M * slice[i][0])
			break
		}
	}

	fmt.Println(sum)
}

// ------ Mathライブラリ ---------------------------------//
func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}

func maxIdx(a ...int) int {
	r := a[0]
	index := 0
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
			index = i
		}
	}
	return index
}

func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}

func minIdx(a ...int) int {
	r := a[0]
	index := 0
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
			index = i
		}
	}
	return index
}

func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

// ------ Mathライブラリ ---------------------------------//

// ----- 標準入力用の関数 ----------------------------------//
var nextReader func() []string

func NewScanner() func() []string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	return func() []string {
		r.Scan()
		return strings.Fields(r.Text())
	}
}

func nextString() []string {
	return nextReader()
}

func nextInt() []int {
	var intArray []int
	strArray := nextReader()
	for _, v := range strArray {
		i, _ := strconv.Atoi(v)
		intArray = append(intArray, i)
	}
	return intArray
}

func nextFloat64() []float64 {
	var floatArray []float64
	strArray := nextReader()
	for _, v := range strArray {
		f, _ := strconv.ParseFloat(v, 64)
		floatArray = append(floatArray, f)
	}
	return floatArray
}

// ------ 標準入力用の関数 ---------------------------------//

// ------ あまり使わない -----------------------------------//
func nextInt64() []int64 {
	var int64Array []int64
	strArray := nextReader()
	for _, v := range strArray {
		i, _ := strconv.ParseInt(v, 10, 64)
		int64Array = append(int64Array, i)
	}
	return int64Array
}

// ------ あまり使わない -----------------------------------//
