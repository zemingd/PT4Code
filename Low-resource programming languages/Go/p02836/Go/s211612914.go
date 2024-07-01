package main

import (
	"bufio"
	"fmt"
	"sort"
	"strconv"
	"strings"
)

const (
	maxInf = 9999999999
	minInf = -9999999999
)

type IntListForSort []int

func (s IntListForSort) Len() int           { return len(s) }
func (s IntListForSort) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s IntListForSort) Less(i, j int) bool { return s[i] < s[j] }

func sortIntList(intList []int) {
	sort.Sort(IntListForSort(intList))
}

type IntListForSortDesc []int

func (s IntListForSortDesc) Len() int           { return len(s) }
func (s IntListForSortDesc) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s IntListForSortDesc) Less(i, j int) bool { return s[i] > s[j] }

func sortIntListDesc(intList []int) {
	sort.Sort(IntListForSortDesc(intList))
}

// ASC前提
func binarySearchInt(intList []int, key int, iMin int, iMax int) int {
	if iMax < iMin {
		return -1
	} else {
		iMid := iMin + (iMax-iMin)/2
		if intList[iMid] > key {
			return binarySearchInt(intList, key, iMin, iMid-1)
		} else if intList[iMid] < key {
			return binarySearchInt(intList, key, iMid+1, iMax)
		} else {
			return iMid
		}
	}
}

func input() string {
	var s string
	_, _ = fmt.Scan(&s)
	return s
}

func inputLn() string {
	var s string
	_, _ = fmt.Scanln(&s)
	return s
}

func inputByScanner(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func convListStrToInt(strList []string) []int {
	intList := make([]int, len(strList))
	for k, v := range strList {
		intV, _ := strconv.Atoi(v)
		intList[k] = intV
	}
	return intList
}

func convListStrToFloat(strList []string) []float64 {
	intList := make([]float64, len(strList))
	for k, v := range strList {
		intV, _ := strconv.Atoi(v)
		intList[k] = float64(intV)
	}
	return intList
}

func swapIntList(list []int, a int, b int) []int {
	tmp := list[a]
	list[a] = list[b]
	list[b] = tmp
	return list
}

type heapIntDesc struct {
	list []int
}

func (h *heapIntDesc) push(el int) {
	h.list = append(h.list, el)
	//fmt.Println(h.list)
	length := len(h.list)
	elIndex := length - 1
	for {
		if elIndex == 0 {
			break
		}
		// 奇数なら左側、偶数なら右側
		isLeft := elIndex%2 == 1
		//fmt.Println(isLeft)
		var parentIndex int
		if isLeft {
			parentIndex = elIndex / 2
		} else {
			parentIndex = (elIndex - 1) / 2
		}
		//fmt.Println(h.list[elIndex] > h.list[parentIndex])
		if h.list[elIndex] > h.list[parentIndex] {
			swap := h.list[elIndex]
			h.list[elIndex] = h.list[parentIndex]
			h.list[parentIndex] = swap
			elIndex = parentIndex
		} else {
			break
		}
	}
}

func (h *heapIntDesc) pop() int {
	popped := h.list[0]
	lastIndex := len(h.list) - 1
	h.list = swapIntList(h.list, 0, lastIndex)
	h.list = h.list[:lastIndex]
	lastIndex--
	elIndex := 0
	for {
		var leftChildIndex, rightChildIndex int
		if elIndex == 0 {
			leftChildIndex = 1
			rightChildIndex = 2
		} else {
			leftChildIndex = elIndex * 2
			rightChildIndex = elIndex*2 + 1
		}
		if leftChildIndex > lastIndex {
			break
		}
		var maxChildIndex int
		if rightChildIndex <= lastIndex {
			if h.list[leftChildIndex] > h.list[rightChildIndex] {
				maxChildIndex = leftChildIndex
			} else {
				maxChildIndex = rightChildIndex
			}
		} else {
			maxChildIndex = leftChildIndex
		}
		//fmt.Println("maxChild")
		//fmt.Println(h.list[maxChildIndex])
		if h.list[elIndex] < h.list[maxChildIndex] {
			h.list = swapIntList(h.list, elIndex, maxChildIndex)
			elIndex = maxChildIndex
		} else {
			break
		}
	}
	return popped
}

func heapSortIntList(list []int) {
	length := len(list)
	heapList := make([]int, length)
	for i := 0; i < length; i++ {
		heapList[i] = list[i]
	}
}

func main() {
	s := input()
	ss := strings.Split(s, "")
	head := 0
	tail := len(ss) - 1
	res := 0
	for {
		if ss[head] != ss[tail] {
			res++
		}
		head++
		tail--
		if head >= tail {
			break
		}
	}
	fmt.Println(res)
}