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

type Entry struct{
  name string
  score int
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)

  var res string
  judgeCounter := map[string]int{"AC" : 0, "WA" : 0, "TLE" : 0, "RE" : 0}

  n := iScan()

  for i := 0; i < n; i++ {
    judge := Scan()
    judgeCounter[judge]++;
  }


  res = "AC" + " x " + strconv.Itoa(judgeCounter["AC"])
  fmt.Println(res)
  res = "WA" + " x " + strconv.Itoa(judgeCounter["WA"])
  fmt.Println(res)
  res = "TLE" + " x " + strconv.Itoa(judgeCounter["TLE"])
  fmt.Println(res)
  res = "RE" + " x " + strconv.Itoa(judgeCounter["RA"])
  fmt.Println(res)

}
