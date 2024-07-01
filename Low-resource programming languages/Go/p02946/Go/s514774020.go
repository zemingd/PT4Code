package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	arr := scanArrayInt()
	out := make([]string, arr[0]+(arr[0]-1))
	j := 0
	for i := arr[1] - (arr[0] - 1); i < arr[1]+(arr[0]); i++ {
		out[j] = fmt.Sprintf("%v", i)
		j++
	}
	fmt.Println(strings.Join(out, " "))
}
func scanArrayInt() []int {
	var ret = []int{}
	stdin.Scan()
	for _, s := range strings.Split(stdin.Text(), " ") {
		i, _ := strconv.Atoi(s)
		ret = append(ret, i)
	}
	return ret
}