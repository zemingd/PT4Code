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
	fmt.Println(arr[2] - (arr[0] - arr[1]))

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
