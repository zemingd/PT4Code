package util

type QueueItem struct {
	key, value int
}

func (q Queue) isPrior(i, j int) bool {
	if q.body[i].key > q.body[j].key {
		return true
	}
	if q.body[i].key == q.body[j].key {
		return q.body[i].value > q.body[i].value
	}
	return false

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
		parentIndex := ((index + 1) >> 1) - 1
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
	q.body[0] = q.body[q.size-1]
	q.size--
	q.body = q.body[:q.size]
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
