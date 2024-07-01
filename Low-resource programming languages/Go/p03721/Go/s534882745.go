package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func splitInt(str string, sep string) (nums []int) {
	sp := strings.Split(str, sep)
	nums = make([]int, len(sp))
	for i, s := range sp {
		n, _ := strconv.Atoi(s)
		nums[i] = n
	}
	return
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()

	nm := splitInt(sc.Text(), " ")

	total := 0
	for i := 1; i <= nm[0]; i++ {
		sc.Scan()
		nums := splitInt(sc.Text(), " ")
		total += nums[1]
		if total >= nm[1] {
			fmt.Println(nums[0])
			return
		}
	}
}