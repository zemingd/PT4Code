package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := NewScanner()

	n := sc.ReadInt()
	membersOfPerson := make([]*IntList, n+1)
	maxMemberCount := 1

	m := sc.ReadInt()
	for i := 0; i < m; i++ {
		ai := sc.ReadInt()
		bi := sc.ReadInt()

		if membersOfPerson[ai] == nil && membersOfPerson[bi] == nil {
			list := NewIntList()
			list.Add(ai)
			list.Add(bi)

			membersOfPerson[ai] = list
			membersOfPerson[bi] = list
			if 2 > maxMemberCount {
				maxMemberCount = 2
			}
		} else if membersOfPerson[ai] != nil && membersOfPerson[bi] == nil {
			list := membersOfPerson[ai]
			list.Add(bi)
			membersOfPerson[bi] = list

			if list.Len() > maxMemberCount {
				maxMemberCount = list.Len()
			}
		} else if membersOfPerson[ai] == nil && membersOfPerson[bi] != nil {
			list := membersOfPerson[bi]
			list.Add(ai)
			membersOfPerson[ai] = list

			if list.Len() > maxMemberCount {
				maxMemberCount = list.Len()
			}
		} else if membersOfPerson[ai] != membersOfPerson[bi] {
			var list *IntList
			var updateTargets *IntList
			if membersOfPerson[ai].Len() < membersOfPerson[bi].Len() {
				list = membersOfPerson[bi]
				updateTargets = membersOfPerson[ai]
			} else {
				list = membersOfPerson[ai]
				updateTargets = membersOfPerson[bi]
			}
			list.Concat(updateTargets)
			updateTargets.Each(func(person int) {
				membersOfPerson[person] = list
			})
			if list.Len() > maxMemberCount {
				maxMemberCount = list.Len()
			}
		}
	}

	fmt.Println(maxMemberCount)
}

type IntList struct {
	first *intListNode
	last  *intListNode
	len   int
}

type intListNode struct {
	child *intListNode
	value int
}

func NewIntList() *IntList {
	return &IntList{nil, nil, 0}
}

func NewIntListFromArray(a []int) *IntList {
	list := NewIntList()
	for _, elem := range a {
		list.Add(elem)
	}
	return list
}

func (list *IntList) Len() int {
	return list.len
}

func (list *IntList) Add(elem int) {
	node := intListNode{nil, elem}
	if list.first == nil {
		list.first = &node
		list.last = &node
	} else {
		list.last.child = &node
		list.last = &node
	}
	list.len++
}

func (list *IntList) Concat(other *IntList) {
	if list.first == nil {
		*list = *other
	} else if other.first == nil {
		// Do nothing
	} else {
		list.last.child = other.first
		list.last = other.last
		list.len += other.len
	}
}

func (list *IntList) Each(f func(elem int)) {
	cur := list.first
	for cur != nil {
		f(cur.value)
		cur = cur.child
	}
}

func (list *IntList) ToA() []int {
	a := make([]int, list.Len())
	{
		index := 0
		list.Each(func(elem int) {
			a[index] = elem
			index++
		})
	}
	return a
}

// from [my library](https://github.com/ikngtty/go-contestlib)
// -   math/simple

func Abs(x int) int {
	if x >= 0 {
		return x
	}
	return -x
}

func Min(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}

	min := values[0]
	for _, v := range values {
		if v < min {
			min = v
		}
	}
	return min
}

func Max(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}

	max := values[0]
	for _, v := range values {
		if v > max {
			max = v
		}
	}
	return max
}

func Pow(base, exponent int) int {
	if exponent < 0 {
		panic(fmt.Sprintf("exponent (%d) should not be a minus", exponent))
	}

	answer := 1
	for i := 0; i < exponent; i++ {
		answer *= base
	}
	return answer
}

func Ceil(divident, dividor int) int {
	if dividor == 0 {
		panic("dividor should not be 0")
	}

	quo := divident / dividor
	rem := divident % dividor

	if rem != 0 {
		if (divident > 0 && dividor > 0) ||
			(divident < 0 && dividor < 0) {
			return quo + 1
		}
	}
	return quo
}

// -   sortutil

func ReverseInts(a []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
}

func ReverseStrings(a []string) {
	sort.Sort(sort.Reverse(sort.StringSlice(a)))
}

// -   io

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
	bufSc.Buffer(nil, 100000000)
	return &Scanner{bufSc}
}

func (sc *Scanner) ReadString() string {
	bufSc := sc.bufScanner
	bufSc.Scan()
	return bufSc.Text()
}

func (sc *Scanner) ReadInt() int {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}

func (sc *Scanner) ReadFloat() float64 {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.ParseFloat(text, 64)
	if err != nil {
		panic(err)
	}
	return num
}
