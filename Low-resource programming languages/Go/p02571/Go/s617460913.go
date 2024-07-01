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
	s := scan()
	t := scan()
	s_slice := strings.Split(s,"")
	t_slice := strings.Split(t,"")
	// k := 0
	min := 1000
	for i:= 0; i<=len(s_slice)-len(t_slice); i++ {
		count := 0
		for j := 0; j<len(t_slice);j++ {
			if i+j == len(s_slice) {
				break
			}
			if s_slice[i+j] != t_slice[j] {
				count ++
			}
		}
		if min > count {
			min = count
		}
	}
	fmt.Println(min)
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