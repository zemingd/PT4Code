package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// type ByValue []float64

// func (s ByValue) Len() int           { return len(s) }
// func (s ByValue) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
// func (s ByValue) Less(i, j int) bool { return s[i] < s[j] }

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	strH := sc.Text()
	strHList := strings.Split(strH, " ")
	hList := []int{}
	for _, v := range strHList {
		intV, _ := strconv.Atoi(v)
		hList = append(hList, intV)
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
