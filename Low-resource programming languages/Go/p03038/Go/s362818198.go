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

func stdioNums(s *bufio.Scanner) []int64 {
	var nums []int64
	for _, v := range strings.Split(stdioText(s), " ") {
		i, _ := strconv.ParseInt(v, 10, 64)
		nums = append(nums, i)
	}
	return nums
}

type Int64Slice[] int64

func (p Int64Slice) Len() int {
	return len(p)
}

func (p Int64Slice) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Int64Slice) Less(i, j int) bool {
	return p[i] < p[j]
}

type Set struct {
	cnt int64
	num int64
}

type Sets []Set

func (p Sets) Len() int {
	return len(p)
}

func (p Sets) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Sets) Less(i, j int) bool {
	return p[i].num < p[j].num
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	cards := stdioNums(sc)

	sets := make(Sets, m)

	for i := 0; i < m; i++ {
		tmp := stdioNums(sc)
		
		sets[i].cnt = tmp[0]
		sets[i].num = tmp[1]
	}

	sort.Sort(sort.Reverse(sets))
	nums := make(Int64Slice, n)
	counter := 0
	fmt.Println(sets)

LOOP1:
	for _, v := range sets {
		for i := 0; i < int(v.cnt); i++ {
			nums[counter] = v.num
			counter++

			if int(n) <= counter {
				break LOOP1
			}
		}
	}

	nums = append(nums, cards...)
	sort.Sort(sort.Reverse(nums))

	sum := int64(0)
	for i:=0;i< n ;  i++{
		sum += nums[i]
	}
	fmt.Println(sum)
}
