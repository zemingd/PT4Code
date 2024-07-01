package main

import "fmt"
import "bufio"
import "os"
import "strconv"
import "sort"

var _sw = bufio.NewScanner(os.Stdin)

type node struct {
	next  [26]*node
	len   int
	debug string
	start int
}

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

	mkNode := func(len int, debug string, start int) *node {
		return &node{
			next:  [26]*node{},
			len:   len,
			debug: debug,
			start: start,
		}
	}

	root := mkNode(0, "", 0)
	set := []*node{
		root,
	}
	max := 0
	for i := range s {
		c := s[i]
		for j, n := range set {
			if n.next[c-'a'] == nil {
				n.next[c-'a'] = mkNode(n.len+1, "", i)
			} else {
				if n.start < i-(n.len+1) {
					max = Max(n.len+1, max)
				}
			}
			set[j] = n.next[c-'a']
		}
		set = append(set, root)
	}
	fmt.Println(max)
}

func init() {
	_sw.Split(bufio.ScanWords)
}

func NextInt() int {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	i, e := strconv.Atoi(_sw.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func NextInts(n int) []int {
	a := make([]int, n)
	for i := range a {
		a[i] = NextInt()
	}
	return a
}

func NextString() string {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	return _sw.Text()
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func Min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func Bounded(lower, n, upper int) int {
	return Min(upper, Max(lower, n))
}

func SortInts(xs []int) {
	sort.Sort(sort.IntSlice(xs))
}

func ReverseSortInts(xs []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(xs)))
}
