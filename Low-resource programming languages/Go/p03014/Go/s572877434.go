package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const (
	INF int = 1<<62
	MOD int = 1000000007
)

var DX, DY []int

var H, W int
var M []string
var ans int

func Input(){
	H = NextInt()
	W = NextInt()
	M = NextStrings(H)
}

func Solve(){
	res := Ints3D(H, W, 4)
	for h := 0; h<H; h++{
		sum := 0
		for w:=0; w<W; w++{
			if M[h][w] == '#'{
				sum = 0
				continue
			}
			res[h][w][0] = sum
			sum++
		}
		sum = 0
		for w:=W-1; w>=0; w--{
			if M[h][w] == '#'{
				sum = 0
				continue
			}
			res[h][w][1] = sum
			sum++
		}
	}
	for w:=0; w<W; w++{
		sum:=0
		for h:=0; h<H; h++{
			if M[h][w] == '#'{
				sum = 0
				continue
			}
			res[h][w][2] = sum
			sum++
		}
		sum = 0
		for h:=H-1; h>=0; h--{
			if M[h][w] == '#'{
				sum = 0
				continue
			}
			res[h][w][3] = sum
			sum++
		}
	}
	for _, a := range(res){
		for _, b:=range(a){
			sum := 0
			for _, c := range(b){
				sum += c
			}
			ans = Max(ans, sum)
		}
	}
}

func Output(){
	fmt.Println(ans+1)
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
	DY = []int{-1, 0, 1, 0}
	DX = []int{0, 1, 0, -1}
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

func NextInts(N int) []int{
	ret := Ints(N)
	for i := range ret {
		ret[i] = NextInt()
	}
	return ret
}
func NextStrings(N int) []string {
	ret := Strings(N)
	for i := range ret {
		ret[i] = Next()
	}
	return ret
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
func Abs(n int)int{
	if n < 0{
		return -n
	}
	return n
}
func Ints(n int) []int{
	return make([]int, n)
}
func Ints2D(x, y int) [][]int{
	ret := [][]int{}
	for i:=0; i< x; i++{
		ret = append(ret, Ints(y))
	}
	return ret
}
func Ints3D(x, y, z int)[][][]int{
	ret := [][][]int{}
	for i:=0; i<x; i++ {
		ret = append(ret, Ints2D(y, z))
	}
	return ret
}
func Bools(n int) []bool{
	return make([]bool, n)
}
func Strings(n int) []string{
	return make([]string, n)
}
