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
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	strVList := strings.Split(sc.Text(), " ")
	vList := []int{}
	for _, v := range strVList {
		intV, _ := strconv.Atoi(v)
		vList = append(vList, intV)
	}
	sc.Scan()
	strCList := strings.Split(sc.Text(), " ")
	cList := []int{}
	for _, v := range strCList {
		intV, _ := strconv.Atoi(v)
		cList = append(cList, intV)
	}
	res := 0
	for i := 0; i < n; i++ {
		diff := vList[i] - cList[i]
		if diff > 0 {
			res += diff
		}
	}
	fmt.Println(res)
}
