package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	// read one word/char/int separated by space(s).
	sc.Split(bufio.ScanWords)

	// read one line.
	// sc.Split(bufio.ScanLines)
}

func main() {
	N := nextInt()
	M := nextInt()
	h := make(heap, 0, 100)
	m := map[int][]int{}
	for i := 0; i < N; i++ {
		A := nextInt()
		B := nextInt()
		m[A] = append(m[A], B)
	}
	ans := int64(0)
	for i := 1; i <= M; i ++ {
		if len(m[i]) > 0 {
			for _, v := range m[i] {
				h.enqueue(v)
			}
		}
		if len(h) > 0 {
			ans += int64(h.dequeue())
		}
	}
	fmt.Printf("%d", ans)
}

type heap []int

func(h *heap) enqueue(n int) {
	*h = append(*h, n)
	h.up(len(*h)-1)
}

func(h *heap) up(cur int) {
	if cur == 0 {
		return
	}
	parent := (cur-1)/2
	if (*h)[parent] < (*h)[cur] {
		(*h)[parent], (*h)[cur] = (*h)[cur], (*h)[parent]
		h.up(parent)
	}
	return
}

func(h *heap) dequeue() int {
	val := (*h)[0]
	(*h)[0] = (*h)[len(*h)-1]
	*h = (*h)[:len(*h)-1]
	h.down(0)
	return val
}

func(h *heap) down(cur int) {
	left := cur*2 + 1
	right := (cur+1) * 2
	if left >= len(*h) {
		return
	}
	if right < len(*h) {
		if (*h)[left] >= (*h)[right] && (*h)[left] > (*h)[cur] {
			(*h)[left], (*h)[cur] = (*h)[cur], (*h)[left]
			h.down(left)
			return
		}
		if (*h)[left] < (*h)[right] && (*h)[right] > (*h)[cur] {
			(*h)[right], (*h)[cur] = (*h)[cur], (*h)[right]
			h.down(right)
			return
		}
	}
	if (*h)[left] > (*h)[cur] {
		(*h)[left], (*h)[cur] = (*h)[cur], (*h)[left]
	}
	return
}