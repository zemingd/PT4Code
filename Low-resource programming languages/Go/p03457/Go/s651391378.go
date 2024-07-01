package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	var arr = []map[string]int{{"time": 0, "x": 0, "y": 0}}
	n := func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }()
	for i := 0; i < n; i++ {
		in := scanArrayInt()
		arr = append(arr, map[string]int{"time": in[0], "x": in[1], "y": in[2]})
	}
	flag := true
	for i := 1; i < n+1; i++ {
		dt := float64(arr[i]["time"] - arr[i-1]["time"])
		xm := math.Abs(float64(arr[i]["x"] - arr[i-1]["x"]))
		ym := math.Abs(float64(arr[i]["y"] - arr[i-1]["y"]))
		dist := xm + ym
		if dt < dist {
			flag = false
			break
		}
		if int(dt)%2 != int(dist)%2 {
			flag = false
			break
		}
	}
	if flag {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

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