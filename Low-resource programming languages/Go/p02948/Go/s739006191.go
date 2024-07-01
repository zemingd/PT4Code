package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const MaxInt = int(^uint(0) >> 1)
const MinInt = -MaxInt - 1

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

// quick sort with value
func QsortV(key Sortable) {
	key.qsort(0, len(key)-1)
}

type SortableItem struct {
	key1, key2, value int
}
type Sortable []SortableItem

// returns -1 then a is prior to b
func (s Sortable) isPrior(a, b int) int {
	if s[a].key1 == s[b].key1 && s[a].key2 == s[b].key2 {
		return 0
	} else if s[a].key1 > s[b].key1 || (s[a].key1 == s[b].key1 && s[a].key2 > s[b].key2) {
		return -1
	}
	return 1
}

func (s Sortable) swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s Sortable) partition(left, right int, pivot int) (int, int) {
	m := left
	for m < right {
		le := s.isPrior(m, pivot)
		if le < 0 {
			s.swap(left, m)
			left++
			m++
		} else if le > 0 {
			s.swap(right, m)
			right--
		} else {
			m++
		}
	}
	return left - 1, right
}

func (s Sortable) qsort(left, right int) {
	//fmt.Printf("qsort %v %d %d\n", s, left, right)
	if right == left {
		return
	}
	if (right - left) == 1 {
		if s.isPrior(left, right) > 0 {
			s.swap(left, right)
		}
		return
	}

	ml, mr := s.partition(left, right, right)

	if ml > left {
		s.qsort(left, ml)
	}
	if mr < right {
		s.qsort(mr, right)
	}
}

func combination(n, r int) int {
	result := 1
	for i := n; i > (n - r); i-- {
		result *= i
	}
	for i := 2; i <= r; i++ {
		result /= i
	}
	return result
}

func _main() {
	fmt.Printf("%v\n", sortIndex([]int{1, 3, 1}, []int{0, 2, 1}))
}

func sortIndex(key1, key2 []int) []int {
	s := make(Sortable, len(key1))
	for i, _ := range s {
		s[i] = SortableItem{key1[i], key2[i], i}
	}
	QsortV(s)
	result := make([]int, len(key1))
	for i, v := range s {
		result[i] = v.value
	}
	return result
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	m := nextInt()
	date := make([]int, n)
	salary := make([]int, n)

	for i := 0; i < n; i++ {
		date[i], salary[i] = nextInt(), nextInt()
	}

	total := 0
	salaryIndexDesc := sortIndex(salary, date)
	used := make([]bool, n)
	for i, _ := range used {
		used[i] = false
	}
	for d := m; d >= 0; d-- {
		t := 0
		for i := 0; i < n; i++ {
			if used[i] {
				continue
			}
			t = salaryIndexDesc[i]
			if d+date[t] > m {
				continue
			}
			used[i] = true
			total += salary[t]
			break
		}
	}

	fmt.Printf("%d\n", total)
}
