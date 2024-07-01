package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scan_init()
	n := scanInt()
	a := make([]int, n)
	x := make([][]int,n)
	y := make([][]int,n)
	for i:= 0; i<n; i++ {
		a[i] = scanInt()
		x[i] = make([]int,a[i])
		y[i] = make([]int,a[i])
		for j:=0; j<a[i]; j++ {
			x[i][j] = scanInt() - 1
			y[i][j] = scanInt()
		}
	}
	sum := 0
	for i := 0; i < (1<<n); i++ {
		maybeHuman := make([]int,n)
		// expressHuman := map[int]int{}
		maybesum := 0
		hatan := false
		// 1をNから左シフト
		// bit全探索
		// cost := 0
		// fmt.Println("Start!!", i)
		for j := 0; j<n; j++ {
			if (i>>j&1) == 1 {
				// fmt.Println("maybe...", j)
				maybeHuman[j] = 1
			}
		}
		for j := 0; j<n; j++ {
			if (i>>j&1) == 1 {
				// fmt.Println("maybe...", j)
				for k:= 0; k<a[j]; k++ {
					if maybeHuman[x[j][k]] == 1 && y[j][k] == 0 {
						hatan = true
					}
					if maybeHuman[x[j][k]] == 0 && y[j][k] == 1 {
						hatan = true
					}
				}
			}
		}
		for _,val := range maybeHuman {
			if val == 1 {
				maybesum ++
			}
		}
		if (sum < maybesum) && !hatan {
			// fmt.Println(i, maybeHuman, "replace sum")
			sum = maybesum
		}
	}
	fmt.Println(sum)
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