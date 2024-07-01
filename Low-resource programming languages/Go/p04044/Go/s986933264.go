package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	In := readLineInt()
	Count := In[0]
	Results := make([]string, Count)
	Loop(0, Count, func(i int) {
		Results[i] = readLine()
	})
	sort.Strings(Results)
	for _, s := range Results {
		fmt.Print(s)
	}
	fmt.Println()
}

/////////////////////////////////////////
var scanner = bufio.NewScanner(os.Stdin)

func init() {
	//scanner.Split(bufio.ScanWords)
}
func readLine() string {
	scanner.Scan()
	return scanner.Text()
}
func readLineInt() []int {
	result := make([]int, 0)
	for _, v := range strings.Split(readLine(), " ") {
		r, _ := strconv.Atoi(v)
		result = append(result, r)
	}
	return result
}

func Loop(start, end int, f func(i int)) {
	for i := start; i < end; i++ {
		f(i)
	}
}