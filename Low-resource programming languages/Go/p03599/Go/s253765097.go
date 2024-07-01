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

	a := scanInt()
	b := scanInt()
	c := scanInt()
	d := scanInt()
	e := scanInt()
	f := scanInt()

	ansAll := 0
	ansSugar := 0
	con := -1.0
	memo := map[rec]bool{}

	var fn func(all,sugar int)
	fn = func(all,sugar int) {
		if memo[rec{all,sugar}] {
			return
		}
		memo[rec{all,sugar}] = true

		now := 100.0*float64(sugar)/float64(all)
		if con < now {
			con = now
			ansAll = all
			ansSugar = sugar
		}
		// fmt.Fprintln(os.Stderr, ansAll,ansSugar,con)
		if all+100*a <= f {
			fn(all+100*a,sugar)
		}
		if all+100*b <= f {
			fn(all+100*b,sugar)
		}
		if all+c <= f && sugar+c <= e*(all-sugar)/100 {
			fn(all+c,sugar+c)
		}
		if all+d <= f && sugar+d <= e*(all-sugar)/100 {
			fn(all+d,sugar+d)
		}
	}

	fn(0,0)

	fmt.Fprintln(wr, ansAll,ansSugar)

}

type rec struct {
	all,sugar int
}
