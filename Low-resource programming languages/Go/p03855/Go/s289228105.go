package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type intQueue []int

func (queue *intQueue) enqueue(i int) {
	*queue = append(*queue, i)
}

func (queue *intQueue) dequeue() int {
	result := (*queue)[0]
	*queue = (*queue)[1:]
	return result
}

var cache map[int]int = map[int]int{}

func countIntersection(i int, roadSet map[int][]int, roadGroups []int, trainSet map[int][]int, trainGroups []int) int {
	if val, ok := cache[roadGroups[i]]; ok {
		return val
	}
	rm := roadSet[roadGroups[i]]
	result := 0
	for _, j := range rm {
		if trainGroups[i] == trainGroups[j] {
			result++
		}
	}
	return result
}

func createGroups(n int, links [][]int) ([]int, map[int][]int) {
	groupSet := make(map[int][]int)
	groups := make([]int, n)
	for i := 0; i < n; i++ {
		groups[i] = -1
	}
	groupNumber := 0
	var queue intQueue = make([]int, 0)
	for i := 0; i < n; i++ {
		if groups[i] != -1 {
			continue
		}
		groupMember := make([]int, 0)
		queue.enqueue(i)
		for len(queue) != 0 {
			j := queue.dequeue()
			groups[j] = groupNumber
			groupMember = append(groupMember, j)
			for _, k := range links[j] {
				if groups[k] == -1 {
					queue.enqueue(k)
				}
			}
		}
		groupSet[groupNumber] = groupMember
		groupNumber++
	}
	return groups, groupSet
}

func readLinks(n, k int) [][]int {
	links := make([][]int, n)
	for i := 0; i < k; i++ {
		p := readInt()
		q := readInt()
		links[p-1] = append(links[p-1], q-1)
		links[q-1] = append(links[q-1], p-1)
	}
	return links
}

func main() {
	n := readInt()
	k := readInt()
	l := readInt()
	roadLinks := readLinks(n, k)
	trainLinks := readLinks(n, l)
	roadGroups, roadSet := createGroups(n, roadLinks)
	trainGroups, trainSet := createGroups(n, trainLinks)
	result := make([]int, n)
	for i := 0; i < n; i++ {
		result[i] = countIntersection(i, roadSet, roadGroups, trainSet, trainGroups)
	}
	printIntln(result...)
}

const (
	ioBufferSize = 100 * 1024 * 1024 // 100 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}

func printIntln(v ...int) {
	b := make([]byte, 0, 4096)
	for i := 0; i < len(v)-1; i++ {
		b = append(b, strconv.Itoa(v[i])...)
		b = append(b, " "...)
	}
	b = append(b, strconv.Itoa(v[len(v)-1])...)
	fmt.Println(string(b))
}
