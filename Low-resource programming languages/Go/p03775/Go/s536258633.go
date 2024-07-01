package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()

	diccnt, divlist := getDivlistSlow(n)

	minf := 100000 * 100000
	for i := 0; i < diccnt; i++ {
		a := divlist[i]
		now := f(a, n/a)
		minf = min(minf, now)
	}

	fmt.Println(minf)

}

func f(a int, b int) int {
	return max(keta(a), keta(b))
}

// 約数列挙リストを作成(愚直)
func getDivlistSlow(a int) (cnt int, divlist []int) {
	for i := 1; i*i <= a; i++ {
		if a%i == 0 {
			cnt++
			divlist = append(divlist, i)
			if i*i != a {
				cnt++
				divlist = append(divlist, a/i)
			}
		}
	}
	sort.Ints(divlist) // 昇順ソート
	return cnt, divlist
}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// 正数の桁数を返す
func keta(n int) int {
	keta := 0
	if n == 0 {
		return 1
	}
	for n > 0 {
		keta++
		n /= 10
	}
	return keta
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
