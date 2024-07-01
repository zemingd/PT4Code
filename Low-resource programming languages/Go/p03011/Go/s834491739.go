package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var P, Q, R int
var ans int

func Input(){
	P = NextInt()
	Q = NextInt()
	R = NextInt()
}

func Solve(){
	a := []int{P, Q, R}
	Sort(a)
	ans = a[0] + a[1]
}

func Output(){
	fmt.Println(ans)
}

func main() {
	Initialize()
	for {
		Input()
		Solve()
		Output()
	}
}

// Initilize ===================
var io *IO;
func Initialize(){
	io = NewIO()
}
// IO ====================

type IO struct{
	sc *bufio.Scanner
}
func NewIO() *IO {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return &IO{
		sc: sc,
	}
}
func Next() string{
	ok := io.sc.Scan()
	if !ok {
		os.Exit(0)
	}
	return io.sc.Text()
}
func NextInt() int {
	s := Next()
	a, err:= strconv.Atoi(s)
	if err != nil {
		print(err)
	}
	return a
}
// =============
func Sort( a[]int){
	sort.Ints(a)
}
func Min(nums ...int) int {
	ret := int(nums[0])
	for _, n := range nums {
		if n < ret {
			ret = n
		}
	}
	return ret
}
func Max(nums ...int) int {
	ret := int(nums[0])
	for _, n := range nums {
		if n > ret {
			ret = n
		}
	}
	return ret
}
