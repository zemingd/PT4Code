package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := make([]int, n)
	// b := make([]int, 0)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	l := list.New()

	for i := 0; i < n; i++ {
		if i%2 != 0 {
			l.PushBack(a[i])
			// b[len(b)-1] = a[i]
		} else {
			// tmp := b[0]
			l.PushFront(a[i])
			// b = b[0:]
			// b[0] = a[i]
			// b = append(b[0:1], b[0:]...)
			// b[0] = a[i]

		}

	}

	if n%2 == 0 {
		for e := l.Back(); e != nil; e = e.Prev() {
			fmt.Printf("%d ", e.Value)
		}
	} else {
		for e := l.Front(); e != nil; e = e.Next() {
			fmt.Printf("%d ", e.Value)
		}
	}

	// if n%2 == 0 {

	// 	for i := len(b) - 1; i >= 0; i-- {
	// 		fmt.Printf("%d ", b[i])
	// 	}
	// } else {
	// 	for i := 0; i < len(b); i++ {
	// 		fmt.Printf("%d ", b[i])

	// 	}
	// }
}
