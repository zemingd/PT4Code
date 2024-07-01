package main

import (
	"bufio"
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

type QueueItem struct {
	key, value int
}

type Queue struct {
	body []QueueItem
}

func (q Queue) isPrior(i, j int) bool {
	if q.body[i].key > q.body[j].key {
		return true
	}
	if q.body[i].key == q.body[j].key {
		return q.body[i].value < q.body[i].value
	}
	return false
}

func (q Queue) swap(i, j int) {
	q.body[i], q.body[j] = q.body[j], q.body[i]
}

func NewQueue() *Queue {
	return &Queue{[]QueueItem{}}
}

func (q *Queue) Push(item QueueItem) {
	index := len(q.body)
	q.body = append(q.body, item)
	for index > 0 {
		parentIndex := ((index + 1) >> 1) - 1
		if q.isPrior(index, parentIndex) {
			q.swap(index, parentIndex)
			index = parentIndex
		} else {
			break
		}
	}
}

func (q *Queue) Pop() QueueItem {
	result := q.body[0]
	size := len(q.body)
	q.body[0] = q.body[size-1]
	size--
	q.body = q.body[:size]
	for index := 0; ; {
		child := ((index + 1) << 1) - 1
		if child >= size {
			break
		}
		rIndex := child + 1
		if rIndex < size && q.isPrior(rIndex, child) {
			child = rIndex
		}
		if q.isPrior(index, child) {
			break
		}
		q.swap(index, child)
		index = child
	}
	return result
}

func (q *Queue) Size() int {
	return len(q.body)
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	m := nextInt()

	dateMap := make(map[int][]int)
	for i := 0; i < n; i++ {
		date, salary := nextInt(), nextInt()
		dateMap[date] = append(dateMap[date], salary)
	}
	//fmt.Printf("%v\n", dateMap)

	total := 0
	q := NewQueue()
	for d := m - 1; d >= 0; d-- {
		if salaries, ok := dateMap[m-d]; ok {
			for _, v := range salaries {
				q.Push(QueueItem{v, m - d})
			}
		}
		//fmt.Printf("%v\n", q)
		if q.Size() > 0 {
			total += q.Pop().key
		}
	}

	fmt.Printf("%d\n", total)
}
