package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := NewScanner()

	x := sc.ReadInt()
	y := sc.ReadInt()
	a := sc.ReadInt()
	b := sc.ReadInt()
	c := sc.ReadInt()

	p := make([]int, a)
	for i := 0; i < a; i++ {
		p[i] = sc.ReadInt()
	}
	q := make([]int, b)
	for i := 0; i < b; i++ {
		q[i] = sc.ReadInt()
	}
	r := make([]int, c)
	for i := 0; i < c; i++ {
		r[i] = sc.ReadInt()
	}

	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	total := 0
	for _, pi := range p[:x] {
		total += pi
	}
	for _, qi := range q[:y] {
		total += qi
	}

	sg := NewStackGroup([][]int{p[:x], q[:y]}, func(a int, b int) bool { return a < b })

	for _, ri := range r {
		popped, err := sg.Pop()
		if err != nil {
			break
		}
		if ri <= popped {
			break
		}

		total += ri - popped
	}

	fmt.Println(total)
}

type StackGroup struct {
	stacks         [][]int
	stackPositions []int
	above          func(int, int) bool
}

func NewStackGroup(stacks [][]int, above func(int, int) bool) *StackGroup {
	stackPositions := make([]int, len(stacks))
	for i, stack := range stacks {
		stackPositions[i] = len(stack) - 1
	}

	return &StackGroup{stacks, stackPositions, above}
}

func (sg *StackGroup) Pop() (int, error) {
	popStackIndex := -1
	var popValue *int = nil
	for stackIndex, stack := range sg.stacks {
		pos := sg.stackPositions[stackIndex]
		if pos < 0 {
			continue
		}

		v := stack[pos]
		if popValue == nil || sg.above(v, *popValue) {
			popStackIndex = stackIndex
			popValue = &v
		}
	}

	if popValue == nil {
		return 0, errors.New("empty")
	}

	sg.stackPositions[popStackIndex]--
	return *popValue, nil
}

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
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
