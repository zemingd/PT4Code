package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scan() string {
	sc.Scan()
	return sc.Text()
}
func iScan() int {
	n, _ := strconv.Atoi(Scan())
	return n
}
func fScan() float64 {
	n, _ := strconv.ParseFloat(Scan(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func SScan(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scan()
	}
	return a
}
func iSScan(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = iScan()
	}
	return a
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}
func larger(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func smaller(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}
func sum(a []int) int {
	x := 0
	for _, v := range a {
		x += v
	}
	return x
}

var mod int = 1000000007

type con struct {
	a int
	b int
}

func conunt(d int, a []int) int {
	ans := 0
	for i := 0; i < len(a); i++ {
		if a[i] == d {
			ans++
		}
	}
	return ans
}

func test(s []int) {
	s[0] = 5
}

type dim struct {
	x []int
	y []int
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	//予備
	n := iScan()
	a := make([]int, n)
	d := make([]dim, 0)
	for i := 0; i < n; i++ {
		a[i] = iScan()
		x := make([]int, a[i])
		y := make([]int, a[i])
		for j := 0; j < a[i]; j++ {
			x[j] = iScan()
			y[j] = iScan()
		}
		var p dim
		p.x = x
		p.y = y
		d = append(d, p)
	}

	best := 0
	for i := 0; i < (1 << n); i++ {
		//fmt.Println(i)
		flag := false
		for j := 0; j < n; j++ {
			if (1<<j)&i != 1<<j {
				//fmt.Println(i, j, "気にしない")
				continue
			} else {
				//fmt.Println(i, j, "きにする")
				for r := 0; r < len(d[j].x); r++ {
					caseb := ((d[j].y[r] << (d[j].x[r] - 1) & i) == (d[j].y[r] << (d[j].x[r] - 1)))
					if d[j].y[r] == 1 {
						//rの人は正直なはず
						if ((1 << (d[j].x[r] - 1)) & i) == 1<<(d[j].x[r]-1) {
							caseb = true
						} else {
							caseb = false
						}
					}
					if d[j].y[r] == 0 {
						//rの人は嘘つきなはず
						if ((1 << (d[j].x[r] - 1)) & i) == 1<<(d[j].x[r]-1) {
							caseb = false
						} else {
							caseb = true
						}
					}
					//fmt.Println(caseb)
					if caseb {

					} else {
						flag = true
					}
				}
			}
			if flag {
				break
			}
		}
		if flag == false {
			cou := 0
			//fmt.Println("fi", i)
			for r := 0; r < n; r++ {
				if (i & (1 << r)) == (1 << r) {
					cou++
				}
			}
			if best < cou {
				best = cou
			}
		}
	}
	fmt.Println(best)
}