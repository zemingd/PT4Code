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

func main() {
	lr := strings.Fields(nextLine())
	l, _ := strconv.Atoi(lr[0])
	r, _ := strconv.Atoi(lr[1])
	nums := []int{}
	if l < r+2019 {
		for i := l; i <= r; i++ {
			nums = append(nums, i%2019)
		}
	} else {
		for i := l; i <= l+2018; i++ {
			nums = append(nums, i%2019)
		}
	}
	sort.Ints(nums)
	fmt.Println(nums[0] * nums[1] % 2019)
}
