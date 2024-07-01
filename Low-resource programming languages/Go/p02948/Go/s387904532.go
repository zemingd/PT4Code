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

type QueueItem struct {
	key, value int
}

func (q Queue) isPrior(i, j int) bool {
	return q.body[i].key > q.body[j].key
}
func (q Queue) swap(i, j int) {
	q.body[i], q.body[j] = q.body[j], q.body[i]
}

type Queue struct {
	body []QueueItem
	size int
}

func NewQueue() *Queue {
	return &Queue{[]QueueItem{}, 0}
}

func (q *Queue) Push(item QueueItem) {
	q.body = append(q.body, item)
	index := q.size
	q.size++
	for index > 0 {
		parentIndex := ((index - 1) >> 1)
		if q.isPrior(index, parentIndex) {
			q.swap(index, parentIndex)
			index = parentIndex
		} else {
			break
		}
	}
}

func (q *Queue) Peek() QueueItem {
	return q.body[0]
}

func (q *Queue) Pop() QueueItem {
	result := q.body[0]
	q.size--
	q.body[0] = q.body[q.size]
	for index := 0; index < q.size; {
		lIndex := ((index + 1) << 1) - 1
		if lIndex >= q.size || q.isPrior(index, lIndex) {
			break
		}
		rIndex := lIndex + 1
		if rIndex < q.size && !q.isPrior(lIndex, rIndex) {
			q.swap(index, rIndex)
			index = rIndex
		} else {
			q.swap(index, lIndex)
			index = lIndex
		}
	}
	return result
}

func (q *Queue) Size() int {
	return q.size
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	m := nextInt()

	q := NewQueue()
	next := NewQueue()
	for i := 0; i < n; i++ {
		date, salary := nextInt(), nextInt()
		q.Push(QueueItem{salary, date})
	}

	total := 0
	for d := m - 1; d >= 0; d-- {
		for q.Size() > 0 {
			item := q.Pop()
			if item.value+d <= m {
				total += item.key
				break
			} else {
				next.Push(item)
			}
		}
		for next.Size() > 0 {
			q.Push(next.Pop())
		}
	}

	fmt.Printf("%d\n", total)
}
