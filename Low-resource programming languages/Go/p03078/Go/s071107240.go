package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"sort"
)

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)
	
	scanner := bufio.NewScanner(os.Stdin)
	as := strToInt64Slice(scanLine(scanner))
	bs := strToInt64Slice(scanLine(scanner))
	cs := strToInt64Slice(scanLine(scanner))

	ab := calcEachSum(as, bs, x, y)
	sortDescInt64Slice(ab)

	size := k
	if size > x * y {
		size = x * y
	}
	ab = ab[0:size-1]

	abc := calcEachSum(ab, cs, size, z)
	sortDescInt64Slice(abc)

	for i := 0; i < k; i++ {
		fmt.Printf("%d\n", abc[i]);
	}
}

func scanLine(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func strToInt64Slice(line string) []int64 {
	strSlice := strings.Split(line, " ")

	var intSlice []int64
	for _, str := range strSlice {
		intValue, _ := strconv.ParseInt(str, 10, 64)
		intSlice = append(intSlice, intValue)
	}

	return intSlice
}

func sortDescInt64Slice(ints []int64) {
	sort.Sort(sort.Reverse(Int64Slice(ints)))
}

func calcEachSum(list1, list2 []int64, size1, size2 int) []int64 {
	var sumList []int64
	for i := 0; i < size1; i++ {
		for j := 0; j < size2; j++ {
			sumList = append(sumList, list1[i] + list2[j])
		}
	}
	return sumList
}

type Int64Slice []int64
 
func (s Int64Slice) Len() int {
	return len(s)
}
func (s Int64Slice) Less(i, j int) bool {
	return s[i] < s[j]
}
func (s Int64Slice) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}