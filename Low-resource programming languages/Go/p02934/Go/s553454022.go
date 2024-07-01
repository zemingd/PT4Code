package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	// n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	strA := sc.Text()
	strAList := strings.Split(strA, " ")
	aList := []float64{}
	for _, v := range strAList {
		intV, _ := strconv.Atoi(v)
		aList = append(aList, float64(intV))
	}
	sum := float64(0.0)
	for _, v := range aList {
		sum += 1 / v
	}
	fmt.Println(1 / sum)
}
