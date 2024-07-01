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
	m := scanInt()
	x := scanInt()
	c := make([]int, n)
	a := make([][]int, n)
	for i:= 0; i<n; i++ {
		c[i] = scanInt()
		a[i] = make([]int, m)
		for j:= 0;j <m; j++ {
			a[i][j] = scanInt()
		}
	}
	sum := x*int(math.Pow(10,12))+1
	submit := false
	for i := 0; i < (1<<n); i++ {
			// 1をNから左シフト
			// bit全探索
			// cost := 0
			// fmt.Println("Start!!", i)
			ms := make([]int, m)
			for j:= 0; j<m; j++ {
				ms[j] = x
			}
			take := 0
			for j := 0; j<n; j++ {
				if (i>>j&1) == 1 {
				// 	fmt.Println("maybe...", j, a[j])
					get := a[j]
					for k := 0; k<len(get); k++ {
						ms[k] -= a[j][k]
					}
					take += c[j]
				}
			}
			check := false
			// fmt.Println(ms)
			for j:= 0; j<m; j++ {
				if ms[j]>0{
					check  = true
					break
				}
			}
			if !check && sum > take{
				// fmt.Println(take)
				submit = true
				sum = take
			}
		}
		if submit {
			fmt.Println(sum)
		} else {
			fmt.Println(-1)
		}
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