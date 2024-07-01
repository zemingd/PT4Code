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
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	strA := sc.Text()
	strAList := strings.Split(strA, " ")
	aList := []float64{}
	for _, v := range strAList {
		intV, _ := strconv.Atoi(v)
		aList = append(aList, float64(intV))
	}
	sort.Slice(aList, func(i, j int) bool {
		return aList[i] < aList[j]
	})
	res := aList[0]
	for i := 1; i < n; i++ {
		res += aList[i]
		res = res / 2
	}
	fmt.Println(res)
}
