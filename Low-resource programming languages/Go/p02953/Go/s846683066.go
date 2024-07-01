package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type ByValue []float64

func (s ByValue) Len() int           { return len(s) }
func (s ByValue) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s ByValue) Less(i, j int) bool { return s[i] < s[j] }

func input() string {
	var s string
	fmt.Scan(&s)
	return s
}

func inputLn() string {
	var s string
	fmt.Scanln(&s)
	return s
}

func inputByScanner(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func inputLongLine() string {
	rdr := bufio.NewReaderSize(os.Stdin, 1000000)
	buf := make([]byte, 0, 1000000)
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

func convListStrToInt(strList []string) []int {
	intList := make([]int, len(strList))
	for k, v := range strList {
		intV, _ := strconv.Atoi(v)
		intList[k] = intV
	}
	return intList
}

func convListStrToFloat(strList []string) []float64 {
	intList := make([]float64, len(strList))
	for k, v := range strList {
		intV, _ := strconv.Atoi(v)
		intList[k] = float64(intV)
	}
	return intList
}

func main() {
	n, _ := strconv.Atoi(input())
	hList := make([]int, n)
	for i := 0; i < n; i++ {
		num, _ := strconv.Atoi(input())
		hList[i] = num
	}

	res := "Yes"
	max := hList[0]
	for i := 1; i < n; i++ {
		if hList[i] < max {
			res = "No"
		}
		if max < hList[i] {
			max = hList[i] - 1
		}
	}
	fmt.Println(res)
}
