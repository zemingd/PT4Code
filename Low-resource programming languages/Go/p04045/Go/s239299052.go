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

	n := scanString()
	k := scanInt()

	d := make([]bool, 11)
	for i := 0; i < k; i++ {
		d[scanInt()] = true
	}

	ans := 0
	min := false
	digit := 1
	for i := 0; i < len(n)-1; i++ {
		digit*=10
	}
	for i := 0; i < len(n); i++ {
		num,_ := strconv.Atoi(string(n[i]))
		if min {
			num = 0
		}
		for j := num; j < 11; j++ {
			if !d[j] {
				if num != j {
					min = true
				}
				if j == 10 {
					for k := 0; k < 10; k++ {
						if !d[k] {
							j += k
							break
						}
					}
				}
				ans += j*digit
				// fmt.Println(num, j)
				break
			}
		}
		digit/=10
	}

	fmt.Println(ans)
	// fmt.Println(d)
}