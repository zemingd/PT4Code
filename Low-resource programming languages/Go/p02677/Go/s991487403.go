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

func main() {
	list := getStdinIntArr()
	A := list[0]
	B := list[1]
	H := list[2]
	M := list[3]

	Apos := (60.0*float64(H) + float64(M))
	BposN := ((60*H + M) % 60) * 12
	Bpos := float64(BposN)

	if Apos == Bpos {
		fmt.Printf("%.20f", float64(math.Abs(float64(A)-float64(B))))
	} else if Apos < Bpos {
		CosCA := 2 * math.Pi * Apos / 720.0
		CosCB := 2 * math.Pi * Bpos / 720.0
		CosC := math.Abs(CosCA - CosCB)
		C := math.Sqrt(float64(A*A) + float64(B*B) - 2.0*float64(A)*float64(B)*math.Cos(CosC))
		fmt.Printf("%.20f", C)
	} else {
		CosCA := 2 * math.Pi * Apos / 720.0
		CosCB := 2 * math.Pi * Bpos / 720.0
		CosC := math.Abs(CosCA - CosCB)
		C := math.Sqrt(float64(A*A) + float64(B*B) - 2.0*float64(A)*float64(B)*math.Cos(CosC))
		fmt.Printf("%.20f", C)
	}

	fmt.Printf("\n")
}

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
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
