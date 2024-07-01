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
	sc.Scan()
	line := strings.Split(sc.Text(), " ")
	a, _ := strconv.Atoi(line[0])
	b, _ := strconv.Atoi(line[1])
	h, _ := strconv.Atoi(line[2])
	m, _ := strconv.Atoi(line[3])
	theta := calcAngle(h, m)
	dist := calcDistance(float64(a), float64(b), theta)
	fmt.Println(dist)
}

func calcAngle(h, m int) float64 {
	theta1 := 2.0 * math.Pi * (float64(h) + float64(m)/60.0) / 12.0
	theta2 := 2.0 * math.Pi * float64(m) / 60.0
	return theta1 - theta2
}

func calcDistance(a, b, theta float64) float64 {
	square := a*a + b*b - 2*a*b*math.Cos(theta)
	return math.Sqrt(square)
}
