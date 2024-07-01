package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func sortVal(ad []int, i int) int {

	val := ad[i] % 10
	if val == 0 {
		val = 10
	}
	fmt.Printf("value:%d, val:%d \n", ad[i], val)
	return val
}

func main() {
	sc.Split(bufio.ScanWords)

	ad := []int{}

	for i := 0; i < 5; i++ {

		a := nextInt()
		ad = append(ad, a)
	}

	sort.SliceStable(ad, func(i, j int) bool {
		return sortVal(ad, i) > sortVal(ad, j)
	})

	for _, v := range ad {
		fmt.Printf("%d \n", v)
	}
}