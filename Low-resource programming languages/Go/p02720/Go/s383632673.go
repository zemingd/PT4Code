package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var llist [9923456]int
var llistIdx int

func main() {
	scanInit()

	k := nextInt()

	for i := 1; i < 10; i++ {
		push(i)
	}

	// BFS
	llistIdx = 0
	for queue.Len() > 0 {
		now := pop()
		llist[llistIdx] = now
		llistIdx++

		if keta(now) < 10 {
			base := now % 10
			push(now*10 + base)
			if base == 0 {
				push(now*10 + 1)
			} else if base == 9 {
				push(now*10 + 8)
			} else {
				push(now*10 + base - 1)
				push(now*10 + base + 1)
			}
		}

	}

	anslist := llist[:llistIdx]
	sort.Ints(anslist)

	fmt.Println(anslist[k-1])

}

var queue = list.New()

func push(a int) {
	queue.PushBack(a)
}
func pop() int {
	e := queue.Front()
	queue.Remove(e)
	return e.Value.(int) // 明示的キャストが必要
}

// 正数の桁数を返す
func keta(n int) int {
	keta := 0
	if n == 0 {
		return 1
	}
	for n > 0 {
		keta++
		n /= 10
	}
	return keta
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
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
