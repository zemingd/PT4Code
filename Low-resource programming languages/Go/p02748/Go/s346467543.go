package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func StarrToIntarr(s []string) []int {
	res := make([]int, len(s))
	for ind, val := range s {
		res[ind], _ = strconv.Atoi(val)
	}
	return res
}
func main() {
	//s := nextLine()
	var a, b, m int
	fmt.Scan(&a, &b, &m)
	ab := make([]string, 2)
	waribiki := make([]string, m)
	for index := 0; index < 2; index++ {
		ab[index] = nextLine()
	}
	for index := 0; index < m; index++ {
		waribiki[index] = nextLine()
	}
	aarr := StarrToIntarr(strings.Split(ab[0], " "))
	barr := StarrToIntarr(strings.Split(ab[1], " "))
	waribikiArr := make([]int, m)
	for index := 0; index < m; index++ {
		waribikiSp := StarrToIntarr(strings.Split(waribiki[index], " "))
		waribikiArr[index] = aarr[waribikiSp[0]-1] + barr[waribikiSp[1]-1] - waribikiSp[2]
	}
	sort.Ints(aarr)
	sort.Ints(barr)
	amin := aarr[0]
	bmin := barr[0]

	waribikiArr = append(waribikiArr, amin+bmin)
	sort.Ints(waribikiArr)
	fmt.Println(waribikiArr[0])

}