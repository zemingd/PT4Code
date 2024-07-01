package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	k := nextInt()

	for i := 1; i < 10; i++ {
		enq(i)
	}

	lidx := 0
	for queue.Len() > 0 {
		ei := deq()
		lidx++
		if lidx == k {
			fmt.Println("DBG HIT Kth") //! DBG
			fmt.Println(ei)
			return
		}

		eis := fmt.Sprintf("%d", ei)
		base := ei*10 + ei%10
		if eis[len(eis)-1] != '0' {
			enq(base - 1)
		}
		enq(base)
		if eis[len(eis)-1] != '9' {
			enq(base + 1)
		}
	}
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

var queue = list.New()

func enq(a int) {
	queue.PushBack(a)
}
func deq() int {
	e := queue.Front()
	queue.Remove(e)
	return e.Value.(int) // 明示的キャストが必要
}

// DBGprintqueue print the queue
//! DBG
func DBGprintqueue() {
	fmt.Printf("DBGqueue: [")
	now := queue.Front()
	for now != nil {
		fmt.Printf("%d ", now.Value.(int))
		now = now.Next()
	}
	fmt.Printf(" ]")
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
