package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func stdioText(s *bufio.Scanner) string {
	s.Scan()
	return s.Text()
}

func stdioNum(s *bufio.Scanner) int {
	num, _ := strconv.Atoi(stdioText(s))
	return num
}

func stdioNums(s *bufio.Scanner) []int {
	var nums []int
	for _, v := range strings.Split(stdioText(s), " ") {
		i, _ := strconv.Atoi(v)
		nums = append(nums, i)
	}
	return nums
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	cards := stdioNums(sc)

	for i := 0; i < m; i++ {
		sort.Ints(cards)

		var cnt, num int
		fmt.Scan(&cnt, &num)

		for i := 0; i<cnt; i++ {
			if cards[i] < num {
				cards[i] = num
			}
		}
	}

	sum:=0
	for _, v := range cards {
		sum += v
	}
	fmt.Println(sum)
}
