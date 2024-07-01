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

	a := nextInt()
	b := nextInt()
	_, dl := getDivlistSlow(gcd(a, b))

	cnt := 1
	for _, v := range dl {
		if v == 1 {
			continue
		}
		if isPrime(v) == true {
			cnt++
		}
	}
	fmt.Println(cnt)

}

// 素数判定
func isPrime(a int) bool {
	for i := 2; i*i <= a; i++ {
		if a%i == 0 {
			return false
		}
	}
	return true
}
func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

// 約数列挙リストを作成(愚直)
func getDivlistSlow(a int) (cnt int, divlist []int) {
	for i := 1; i*i <= a; i++ {
		if a%i == 0 {
			cnt++
			divlist = append(divlist, i)
			if i*i != a { // 6*6=36 などを重複カウントしない
				cnt++
				divlist = append(divlist, a/i)
			}
		}
	}
	sort.Ints(divlist) // 昇順ソート
	return cnt, divlist
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // default=64*1024
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
