package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

//const (
//	MaxIntValue = int(^uint(0) >> 1)
//)

func main() {
	In := readLineInt()
	Radius, Count := In[0], In[1]
	Points := readLineInt()

	Sum, Max := 0, 0
	for i, v := range Points {
		var t int
		if i == 0 {
			t = v + Radius - Points[Count-1]
		} else {
			t = v - Points[i-1]
		}
		Sum += t
		Max = max(Max, t)
	}

	fmt.Println(Sum - Max)
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

func max(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
