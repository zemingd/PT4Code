package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type interface1 interface {
	Len() int           // 要素数
	Less(i, j int) bool // i 番目の要素が j 番目の要素より小さくなる条件
	Swap(i, j int)      // i 番目の要素と j 番目の要素を入れ替えるロジック
}

func main() {
	var numStr string
	var numSlice []int
	numSlice = make([]int, 3, 3)
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		numStr = sc.Text()
	}
	numStrArray := strings.Split(numStr, " ")

	for i, valueStr := range numStrArray {
		value, _ := strconv.Atoi(valueStr)
		numSlice[i] = value
	}

	sort.Sort(sort.IntSlice(numSlice))

	var cnt int

	for i := 0; i < 3; i++ {
		value := numSlice[i]
		for j := i + 1; j < 3; j++ {
			if value == numSlice[j] {
				cnt++
			}
		}
	}

	if cnt == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
