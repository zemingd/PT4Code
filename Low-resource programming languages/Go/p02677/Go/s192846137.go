package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	var inputs []string
	for i := 0; i <= 0; i++ {
		sc.Scan()
		inputs = strings.Split(sc.Text(), " ")
	}
	houCM, _ := strconv.Atoi(inputs[0])
	minCM, _ := strconv.Atoi(inputs[1])

	// 分単位でどこにいるか
	min, _ := strconv.Atoi(inputs[3])

	hou, _ := strconv.Atoi(inputs[2])
	hou = (hou * 5) + (min / 12)

	var ans float64

	// 時・分針の差角度(1分6度)
	difference := math.Abs(float64(hou - min))
	if difference > 30 {
		difference = 60 - difference
	}
	angleCos := math.Cos((6 * difference) * math.Pi / 180)

	ans = float64(houCM*houCM) + float64(minCM*minCM) - float64(2*houCM*minCM)*angleCos

	fmt.Println(math.Sqrt(ans))
}
