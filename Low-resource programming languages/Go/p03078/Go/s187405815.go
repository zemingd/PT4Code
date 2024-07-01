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

	sumList := calcEachSum(as, bs, cs, x, y, z)
	sortDescInt64Slice(sumList)

	for i := 0; i < k; i++ {
		fmt.Printf("%d\n", sumList[i]);
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

func calcEachSum(as, bs, cs []int64, x, y, z int) []int64 {
	var sumList []int64
	for i := 0; i < x; i++ {
		for j := 0; j < y; j++ {
			for k := 0; k < z; k++ {
				sumList = append(sumList, as[i] + bs[j] + cs[k])
			}
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