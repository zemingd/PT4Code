package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Int int64

var P, Q, R Int
var ans Int

func Input(){
	P = NextInt()
	Q = NextInt()
	R = NextInt()
}

func Solve(){
	a := []Int{P, Q, R}
	Sort(a)
	ans = a[0] + a[1]
}

func Output(){
	fmt.Println(ans)
}

func main() {
	Initialize()
	Input()
	Solve()
	Output()
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
	io.sc.Scan()
	return io.sc.Text()
}
func NextInt() Int {
	s := Next()
	a, err:= strconv.Atoi(s)
	if err != nil {
		print(err)
	}
	return Int(a)
}
// =============
func Sort( a[]Int){
	sort.Slice(a, func(i, j int) bool {
		return a[i] < a[j]
	})
}
func Min(nums ...Int) Int {
	ret := Int(nums[0])
	for _, n := range nums {
		if n < ret {
			ret = n
		}
	}
	return ret
}
func Max(nums ...Int) Int {
	ret := Int(nums[0])
	for _, n := range nums {
		if n > ret {
			ret = n
		}
	}
	return ret
}
