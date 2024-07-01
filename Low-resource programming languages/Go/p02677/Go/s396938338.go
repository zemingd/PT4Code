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
	list := getStdinIntArr()
	A := list[0]
	B := list[1]
	H := list[2]
	M := list[3]

	aPosM := 60*H + M          // max 720
	bPosM := M % 60            // max 60
	bPosM = bPosM * (720 / 60) // to max 720

	if aPosM == bPosM {
		ans := math.Abs(float64(A) - float64(B))
		fmt.Printf("%.19f\n", ans)
	} else {
		AFloat := float64(A)
		BFloat := float64(B)
		aPosRad := 2.0 * math.Pi * float64(aPosM) / 720.0
		bPosRad := 2.0 * math.Pi * float64(bPosM) / 720.0
		rad := math.Abs(aPosRad - bPosRad)
		var ans float64 = 0
		ans += AFloat * AFloat
		ans += BFloat * BFloat
		ans -= 2.0 * AFloat * BFloat * math.Cos(rad)
		ans = math.Sqrt(ans)
		fmt.Printf("%.19f\n", ans)
	}
}

var sc = bufio.NewScanner(os.Stdin)

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinIntArr() []int {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
