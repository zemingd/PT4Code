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
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	a := [3][3]int{}
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			a[i][j] = scanInt()
		}
	}
	f := [3][3]bool{}

	n := scanInt()
	b := scanInts(n)

	for i := 0; i < n; i++ {
		for j := 0; j < 3; j++ {
			for k := 0; k < 3; k++ {
				if b[i] == a[j][k] {
					f[j][k] = true
				}
			}
		}
	}

	for i := 0; i < 3; i++ {
		cnt := 0
		for j := 0; j < 3; j++ {
			if f[i][j] {
				cnt++
			}
		}

		if cnt == 3 {
			fmt.Fprintln(wr, "Yes")
			return
		}
	}


	for i := 0; i < 3; i++ {
		cnt := 0
		for j := 0; j < 3; j++ {
			if f[j][i] {
				cnt++
			}
		}

		if cnt == 3 {
			fmt.Fprintln(wr, "Yes")
			return
		}
	}

	
	cnt := 0
	for j := 0; j < 3; j++ {
		if f[j][j] {
			cnt++
		}
	}

	if cnt == 3 {
		fmt.Fprintln(wr, "Yes")
		return
	}

	cnt = 0
	for j := 0; j < 3; j++ {
		if f[2-j][j] {
			cnt++
		}
	}

	if cnt == 3 {
		fmt.Fprintln(wr, "Yes")
		return
	}

	fmt.Fprintln(wr, "No")
}
