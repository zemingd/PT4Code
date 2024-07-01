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

type Set struct {
	cnt int
	num int
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	cards := stdioNums(sc)

	sets := make([]Set, m)

	for i := 0; i < m; i++ {
		sort.Ints(cards)
		fmt.Scan(&sets[i].cnt, &sets[i].num)
	}

	sort.Slice(sets, func(i, j int) bool {
		return sets[i].cnt * sets[i].num < sets[j].cnt * sets[j].num
	})

	for _, value := range sets {
		sort.Ints(cards)

		for i := 0; i < value.cnt; i++ {
			if cards[i] < value.num {
				cards[i] = value.num
			}
		}
	}

	sum:=int64(0)
	for _, v := range cards {
		sum += int64(v)
	}
	fmt.Println(sum)
}
