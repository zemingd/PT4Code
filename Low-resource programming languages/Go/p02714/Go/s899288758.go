package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}
func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

//var done []bool = make([]bool, 10)
//var memo []int = make([]int, 10)

type Group struct {
	Depth int
	Value string
}

type Job struct {
	No     int
	S      int
	E      int
	Worker string
}

type Res struct {
	No int
}

func Abs(a int64, b int64) int64 {
	res := a - b
	if a-b < 0 {
		res = -res
	}
	return res
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	_ = nextInt()
	s := next()
	r := map[int]string{}
	g := map[int]string{}
	b := map[int]string{}
	res := 0
	for i, char := range s {
		if char == 'R' {
			r[i] = string(char)

		}
		if char == 'G' {
			g[i] = string(char)

		}
		if char == 'B' {
			b[i] = string(char)

		}
	}
	for kr, _ := range r {
		for kg, _ := range g {
			for kb, _ := range b {
				i := []int{kr, kg, kb}
				sort.Ints(i)
				if i[1]-i[0] != i[2]-i[1] {
					res++
				}
			}
		}
	}
	fmt.Fprintln(out, fmt.Sprint(res))
}
