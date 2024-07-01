// ABC086C - Traveling
package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func readLine() string {
	sc.Scan()
	return sc.Text()
}
func main() {
	//var n int
	//fmt.Scan(&n)
	n, _ := strconv.Atoi(readLine())
	nowt, nowx, nowy := 0, 0, 0
	txy := make([]int, 3)
	flag := true

	for i := 0; i < n; i++ {
		inputLine := strings.Split(readLine(), " ")
		for j := 0; j < 3; j++ {
			txy[j], _ = strconv.Atoi(inputLine[j])
		}
		dt := txy[0] - nowt
		dx := int(math.Abs(float64(txy[1] - nowx)))
		dy := int(math.Abs(float64(txy[2] - nowy)))

		if dt < dx+dy || dt%2 != (dx+dy)%2 {
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
