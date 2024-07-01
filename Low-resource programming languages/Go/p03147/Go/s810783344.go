package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanInit()

	n := nextInt()
	hl := make([]int, n)

	for i := 0; i < n; i++ {
		hl[i] = nextInt()
	}

	cnt := 0
	push(hl)
	for stack.Len() > 0 {
		ei := pop()
		if len(ei) == 0 {
			continue
		}
		if len(ei) == 1 {
			cnt += ei[0]
			continue
		}

		nowmin := 999
		for i := 0; i < len(ei); i++ {
			nowmin = min(nowmin, ei[i])
		}
		cnt += nowmin
		for i := 0; i < len(ei); i++ {
			ei[i] -= nowmin
		}
		online := 0
		neweiidxs := -1
		for i := 0; i < len(ei); i++ {
			if ei[i] != 0 {
				if online == 0 {
					online = 1
					neweiidxs = i
				}
			} else {
				if online == 1 {
					online = 0
					push(ei[neweiidxs:i])
				}
			}
		}
		if online == 1 {
			push(ei[neweiidxs:len(ei)])
		}

	}

	fmt.Println(cnt)

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

var stack = list.New()

func push(a []int) {
	stack.PushFront(a)
}
func pop() []int {
	e := stack.Front()
	stack.Remove(e)
	return e.Value.([]int) // 明示的キャストが必要
}

// DBGprintstack print the stack
//! DBG
func DBGprintstack() {
	fmt.Printf("DBGstack: [")
	now := stack.Front()
	for now != nil {
		fmt.Printf("%d ", now.Value.([]int))
		now = now.Next()
	}
	fmt.Printf(" ]")
}

// ---- readfunc
var sc = bufio.NewScanner(os.Stdin)

func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
