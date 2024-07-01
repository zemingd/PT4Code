package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextLine() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	return sc.Text()
}

func main() {
	totalTime := 0
	remainderList := []int{}
	for i := 0; i < 5; i++ {
		num, _ := strconv.Atoi(nextLine())
		if num%10 != 0 {
			remainderList = append(remainderList, (10 - num%10))
		}
		totalTime += num
	}
	sort.Sort(sort.IntSlice(remainderList))

	adjustment := 0
	for j := 0; j < len(remainderList)-1; j++ {
		adjustment += remainderList[j]
	}
	fmt.Println(totalTime + adjustment)
}
