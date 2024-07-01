package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"sort"
	"strconv"
	"strings"
)

func readLines() string {
	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	if s.Err() != nil {
		// non-EOF error.
		log.Fatal(s.Err())
	}
	return s.Text()
}

func main() {
	var n int
	var s string
	fmt.Scan(&n)
	s = readLines()

	nums := make([]int, n)

	numsStr := strings.Split(s, " ")

	for i, numStr := range numsStr {
		num, err := strconv.Atoi(numStr)
		if err != nil {
			log.Fatalf("%#v", err.Error())
		}
		nums[i] = num
	}

	sort.Ints(nums)
	var res float64
	for _, num := range nums {
		if res == 0 {
			res += float64(num)
			continue
		}
		res = 1.0 / (1.0/res + 1.0/float64(num))
	}
	fmt.Println(res)
}
