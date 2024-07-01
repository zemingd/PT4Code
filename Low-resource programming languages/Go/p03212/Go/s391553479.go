package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string { sc.Scan(); return sc.Text() }
func scanInt() int { a,_ := strconv.Atoi(scanString()); return a }
func scanInt64() int64 { a,_ := strconv.ParseInt(scanString(),10,64); return a }
func scanFloat64() float64 { a,_ := strconv.ParseFloat(scanString(),64); return a }

func scanInts(n int) []int {
	res := make([]int, n); for i := 0; i < n; i++ { res[i] = scanInt() }; return res
}

func abs(a int) int { if a<0 { return -a }; return a }
func min(a,b int) int { if a<b { return a }; return b }
func max(a,b int) int { if a>b { return a }; return b }

//•*¨*•.¸¸♪Main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1000000)

	n := scanInt()
	ans := 0

	var f func(a int)
	f = func (a int) {
		e := a*10
		e3,e5,e7 := e+3,e+5,e+7
		if n >= e3 {
			if check(e3) { ans++ }
			f(e3)
		}
		if n >= e5 {
			if check(e5) { ans++ }
			f(e5)
		}
		if n >= e7 {
			if check(e7) { ans++ }
			f(e7)
		}
	}

	f(3)
	f(5)
	f(7)

	fmt.Println(ans)
}

func check(a int) bool {
	c3,c5,c7 := 0,0,0
	for a != 0 {
		switch a%10 {
		case 3:
			c3++
		case 5:
			c5++
		case 7:
			c7++
		}
		a /= 10
	}
	if c3>0&&c5>0&&c7>0 {
		return true
	}
	return false
}
