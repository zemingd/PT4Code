package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type graph struct {
	friend []int
	index int
}
func main() {
	scan_init()
	n := scanInt()
	m := scanInt()
	a := make([]int, m)
	b := make([]int, m)
	graphs := make([]graph, n)
	groups := [][]int{}
	for i:= 0; i<n; i++ {
		graphs[i].friend = []int{}
		graphs[i].index = i
	}
	for i:= 0; i<m; i++ {
		a[i] = scanInt()-1
		b[i] = scanInt()-1
		graphs[a[i]].friend = append(graphs[a[i]].friend, b[i])
		graphs[b[i]].friend = append(graphs[b[i]].friend, a[i])
	}
	checkers := make([]bool, n)
	que := []int{}
	groupIndex := 0
	for i:= 0; i<n; i++ {
		if checkers[i] {
			continue
		}
		groups = append(groups, []int{})
		que = append(que, i)
		for len(que) > 0 {
			var value int
			value,que = shift(que)
			if checkers[value] {
				continue
			}
			checkers[value] = true
			groups[groupIndex] = append(groups[groupIndex], value)
			que = append(que, graphs[value].friend...)
		}
		groupIndex++
	}
	ans := 0
	for i:= 0; i<len(groups); i++ {
		if ans < len(groups[i]) {
			ans = len(groups[i])
		}
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
func shift(slice []int) (int, []int) {
	n := len(slice)
	value := slice[0]
	popSlice := slice[1:n]
	return value, popSlice
}