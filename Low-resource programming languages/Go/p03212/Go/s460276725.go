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

	arr := []int{3,5,7}
	c := 0

	for d := 1; d <= n; d*=10 {
		c++
	}
	
	for i := 1; i < c; i++ {
		d := len(arr)
		for k := 0; k < d; k++ {
			arr = append(arr, arr[k]*10+3,arr[k]*10+5,arr[k]*10+7)
		}
	}

	cnt := make(map[int]int, 0)

	for i := 0; i < len(arr); i++ {
		cnt[arr[i]]++
	}

	// fmt.Println(cnt)

	for i := range cnt {
		if n >= i && check(i) {
			ans++
		}
	}

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
