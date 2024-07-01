package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	scan_init()
	n := scanInt()
	a := make([]int, n)
	for i:= 0; i<n; i++ {
		a[i] = scanInt()
	}
	mod := int(math.Pow(10,9))+7
	ans := 0
	for i:=0; i<60; i++ {
		x := 0
		for j:= 0; j<n; j++ {
			// fmt.Println("miru", a[j]>>i&1, a[j])
			if (a[j]>>i&1) == 1 {
				x++ // 桁での1をカウント
			}
		}
		now := x*(n-x)%mod
		/* 1　が1個 0がn個の組み合わせは
		1は0と触れ合うことでn個出すので 1*n
		同様に1が２個の場合 0がnこの組み合わせは
		1は1とふれあうと0となり,1は0との組み合わせなので 2*nとなる
		 */
		for j:= 0; j<i; j++ {
			// now * 2 *2 * 2 ... 2^i //桁
			now = now*2%mod
		}
		ans += now
		ans %= mod
	}
	fmt.Println(ans)
}

var sc = bufio.NewScanner(os.Stdin)

func scan_init() {
	sc.Split(bufio.ScanWords)
}
func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scan() string {
	sc.Scan()
	return sc.Text()
}

var rdr = bufio.NewReaderSize(os.Stdin, 200000)

func readLine() string {
	buf := make([]byte, 0, 200000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
func readLineToNumber() int {
	S := readLine()
	number, _ := strconv.Atoi(S)
	return number
}
func readLineToSlice() []string {
	S := readLine()
	list := strings.Split(S, "")
	return list
}
func readLineToNumberSlice(memo map[string]int) []int {
	// err時は-1を代入
	S := readLine()
	intList := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		if val, ok := memo[string(S[i])]; ok {
			intList[i] = val
		} else {
			intList[i] = -1
		}
	}
	return intList
}