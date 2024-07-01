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
	as := strToInt64s(scanLine(scanner))
	bs := strToInt64s(scanLine(scanner))
	cs := strToInt64s(scanLine(scanner))

	var sumList []int64
	for a := 0; a < x; a++ {
		for b := 0; b < y; b++ {
			for c := 0; c < z; c++ {
				sumList = append(sumList, as[a] + bs[b] + cs[c])
			}
		}
	}

	sortDesc(&sumList)

	for i := 0; i < k; i++ {
		fmt.Printf("%d\n", sumList[i]);
	}
}

func scanLine(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func strToInt64s(line string) []int64 {
	strSlice := strings.Split(line, " ")

	var intSlice []int64
	for _, str := range strSlice {
		intValue, _ := strconv.ParseInt(str, 10, 64)
		intSlice = append(intSlice, intValue)
	}

	return intSlice
}

func sortDesc(ints *[]int64) {
	sort.Slice(*ints, func(i, j int) bool {
        return (*ints)[i] > (*ints)[j]
    })
}