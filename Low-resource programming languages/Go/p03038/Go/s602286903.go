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

type Sets []Set

func (p Sets) Len() int {
	return len(p)
}

func (p Sets) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Sets) Less(i, j int) bool {
	return p[j].num < p[i].num
}


func main() {
	var n, m int
	fmt.Scan(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	cards := stdioNums(sc)

	sets := make(Sets, m)

	for i := 0; i < m; i++ {
		fmt.Scan(&sets[i].cnt, &sets[i].num)
	}

	sort.Sort(sets)

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
