package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type ints []int
func (f ints) Len() int {
	return len(f)
}

func (f ints) Less(i, j int) bool {
	return f[i] < f[j]
}

func (f ints) Swap(i, j int) {
	f[i], f[j] = f[j], f[i]
}

func SortInt(x []int) []int {
	i := ints(x[:])
	sort.Sort(i)
	return i
}


func BinarySearch(l []int, key int, isOk func([]int, int, int) bool) (int, int) {
	left := -1
	right := len(l)

	for right - left > 1 {
		mid := left + (right - left) / 2
		if isOk(l, mid, key) {
			right = mid
		} else {
			left = mid
		}
	}

	return left, right
}

func LowerBoundIndex(l []int, key int) int {
	_, right := BinarySearch(l, key, func(l []int, mid int, key int) bool {
		return l[mid] > key
	})
	return right
}

func UpperBoundIndex(l []int, key int) int {
	left, _ := BinarySearch(l, key, func(l []int, mid int, key int) bool {
		return l[mid] >= key
	})
	return left
}

func ZeroOr(x int) int {
	if x < 0 {
		return 0
	}
	return x
}

func main() {
	n := nextInt()
	d := make([]int, n)
	for i := 0; i< n; i++ {
		d[i] = nextInt()
	}
	l := SortInt(d)

	total := 0
	for i := 0; i< n - 2; i++ {
		a := l[i]
		for j := i + 1; j< n -1; j++ {
			b := l[j]
			lower := b - a
			upper := a + b
			lowerI := LowerBoundIndex(l[j+1:n], lower)
			upperI := UpperBoundIndex(l[j+1:n], upper)
			total += ZeroOr(upperI - lowerI + 1)
		}
	}

	fmt.Printf("%d", total)
}
