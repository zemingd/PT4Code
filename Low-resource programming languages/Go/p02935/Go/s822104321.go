package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

const INF = int(math.MaxInt32)
const INF64 = math.MaxInt64 / 2

func init() {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	return sc.Text()
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func uniqIntSlice(a []int) []int {
	m := make(map[int]struct{})
	for _, v := range a {
		m[v] = struct{}{}
	}
	u := []int{}
	for k := range m {
		u = append(u, k)
	}
	return u
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

//a:old b:new a>b -> a=b (update) more small
func chmin(a *int, b int) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

//a:old b:new a>b -> a=b (update) more small
func chmin64(a *int64, b int64) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

//a:old b:new a<b -> a=b (update) more large
func chmax(a *int, b int) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}

//a:old b:new a<b -> a=b (update) more large
func chmax64(a *int64, b int64) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}
type DP struct{
	count int
	s string
}
func rec(a []int)[]int{
	sort.Ints(a)
	if len(a)<=1{
		return a
	}
	a[1]=(a[0]+a[1])/2
	return rec(a[1:])
}

func main() {
	n := nextInt()
	a := make([]int,n)
	for i:=0; i<n; i++ {
		a[i]= nextInt()
	}
	res := rec(a)
	fmt.Println(res[0])
}