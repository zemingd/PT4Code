package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	scan_init()
	n := scanInt()
	x := make([]int, n)
	y := make([]int, n)
	// sumX := make([]int, n)
	for i:= 0; i<n; i++ {
		p := scanInt()
		x[i] = p
		y[i] = p
	}
	// fmt.Println("aa", n/2)
	sort.Ints(y)
	merginLeft := y[(n/2)-1]
	merginRight := y[(n/2)]
	// fmt.Println(merginLeft, merginRight)
	for i:= 0; i<n; i++ {
		if x[i]<= merginLeft {
			fmt.Println(merginRight)
		} else {
			fmt.Println(merginLeft)
		}
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