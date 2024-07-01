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

	var Nstr string
	sc1 := bufio.NewScanner(os.Stdin)

	if sc1.Scan() {
		Nstr = sc1.Text()
	}

	N, _ := strconv.Atoi(strings.Split(Nstr, " ")[0])
	K, _ := strconv.Atoi(strings.Split(Nstr, " ")[1])

	var cardStr string
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		cardStr = sc.Text()
	}

	Ntotal := (N * (N - 1) / 2) + 1

	var total []int
	total = make([]int, Ntotal, Ntotal)

	cardArray := strings.Split(cardStr, " ")

	// var tmpInt []int
	// tmpInt = make([]int, N, N)
	// for i, valueStr := range cardArray {
	// 	value, _ := strconv.Atoi(valueStr)
	// 	tmpInt[i] = value
	// }

	cnt := 1
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			value1, _ := strconv.Atoi(cardArray[i])
			value2, _ := strconv.Atoi(cardArray[j])
			total[cnt] = value1 * value2
			cnt++
		}
	}

	sort.Sort(sort.IntSlice(total))

	fmt.Println(total[K])

}
