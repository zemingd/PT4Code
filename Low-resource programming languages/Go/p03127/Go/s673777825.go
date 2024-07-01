package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	log.SetFlags(log.Lshortfile)
	nextReader = NewScanner()
	_ = nextInt()  //モンスターの数
	a := nextInt() // 各モンスターの体力
	if min(a...) == max(a...) {
		fmt.Println(max(a...))
		return
	}

	kisuflag := false
	gusuflag := false
	for _, v := range a {
		if v%2 == 0 {
			gusuflag = true
		} else {
			kisuflag = true
		}
	}

	if kisuflag {
		minInt := min(a...)
		//fmt.Printf("a: %+v\n", a)
		//fmt.Printf("minInt: %d\n", minInt)
		amari := make([]int, len(a))
		for i := 0; i < len(a); i++ {
			amari[i] = a[i] % minInt
			//fmt.Printf("for: %d\n", amari[i])
		}

		//fmt.Printf("%+v\n", amari)
		//fmt.Printf("あまり確認: %d\n", 6%4)
		if max(amari...) == 0 {
			fmt.Println(minInt)
			return
		} else {
			fmt.Println(1)
			return
		}
	} else if gusuflag {
		minInt := min(a...)
		//fmt.Printf("a: %+v\n", a)
		//fmt.Printf("minInt: %d\n", minInt)
		amari := make([]int, len(a))
		for i := 0; i < len(a); i++ {
			amari[i] = a[i] % minInt
			//fmt.Printf("for: %d\n", amari[i])
		}

		//fmt.Printf("%+v\n", amari)
		//fmt.Printf("あまり確認: %d\n", 6%4)
		if max(amari...) == 0 {
			fmt.Println(minInt)
			return
		} else {
			minAmari := minNonZero(amari...)
			fmt.Println(minAmari)
			return
		}

	}
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

func minNonZero(a ...int) int {
	r := math.MaxInt64
	for i := 0; i < len(a); i++ {
		if r > a[i] && a[i] > 0 {
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
