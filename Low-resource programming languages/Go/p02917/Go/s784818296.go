package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func main() {
	n := nextInt()
	a := make([]int, 0, n)
	bb := make([]int, n-1)
	for index := 0; index < n-1; index++ {
		bb[index] = nextInt()
	}

	f := bb[0]
	ff := bb[1:]
	fmt.Printf("%#v\n", ff)
	a = append(a, f)
	for _, item := range ff {
		a = append(a, Min(item, f))
		f = item
	}
	a = append(a, f)

	// f := bb[n-2]
	// a = append(a, f)
	// ff := bb[0 : n-2]
	// fmt.Printf("%#v\n", ff)
	// for _, item := range ff {
	// 	a = append(a, Min(item, f))
	// 	f = item
	// }
	// a = append(a, f)
	var re int
	for _, item := range a {
		re += item
	}
	fmt.Println(re)
}

func Min(nums ...int) int {
	if len(nums) == 0 {
		panic("function min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("function max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}
