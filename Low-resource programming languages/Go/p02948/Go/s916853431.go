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

func sort(str string) string {
	n := len(str)
	res := []rune(str)
	for i := 0; i < n; i++ {
		min := i
		for j := i + 1; j < n; j++ {
			if res[j] < res[min] {
				min = j
			}
		}
		res[i], res[min] = res[min], res[i]
	}
	return string(res)
}

func sort_index(str []int, second []int) []int {
	n := len(str)
	res := make([]int, n)
	secondRes := make([]int, n)
	rank := make([]int, n)
	for i := 0; i < n; i++ {
		rank[i] = i
		res[i] = str[i]
		secondRes[i] = second[i]
	}
	for i := 0; i < n; i++ {
		max := 0
		maxIndex := i
		for j := i; j < n; j++ {
			if res[j] > max || (res[j] == max && secondRes[j] > secondRes[maxIndex]) {
				max = res[j]
				maxIndex = j
			}
		}
		res[i], res[maxIndex] = res[maxIndex], res[i]
		secondRes[i], secondRes[maxIndex] = secondRes[maxIndex], secondRes[i]
		rank[i], rank[maxIndex] = rank[maxIndex], rank[i]
	}
	return rank
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
	fmt.Printf("%v\n", sort_index([]int{1, 3, 1}, []int{0, 2, 1}))
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
	salaryIndexDesc := sort_index(salary, date)
	used := make([]bool, n)
	for i := 0; i < n; i++ {
		used[i] = false
	}
	for i := 0; i < m && i < n; i++ {
		t := -1
		for j := 0; j < n; j++ {
			if !used[j] {
				used[j] = true
				t = salaryIndexDesc[j]
				break
			}
		}
		if t == -1 {
			break
		}
		if i+date[t] <= m {
			//fmt.Printf("%d %d %d %d\n", i, t, salary[t], date[t])
			total += salary[t]
		}
	}

	fmt.Printf("%d\n", total)
}
