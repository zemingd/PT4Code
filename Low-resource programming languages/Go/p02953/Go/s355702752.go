package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type ByValue []float64

func (s ByValue) Len() int           { return len(s) }
func (s ByValue) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s ByValue) Less(i, j int) bool { return s[i] < s[j] }

func input(sc *bufio.Scanner) string {
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
	sc := bufio.NewScanner(os.Stdin)
	n, _ := strconv.Atoi(input(sc))
	strH := inputLongLine()
	strHList := strings.Split(strH, " ")
	hList := convListStrToInt(strHList)

	for i := 1; i < n; i++ {
		if hList[i-1] > hList[i] {
			fmt.Println("No")
			return
		} else {
			if hList[i] != hList[i-1] {
				hList[i] = hList[i] - 1
			}
		}
	}
	fmt.Println("Yes")
}
