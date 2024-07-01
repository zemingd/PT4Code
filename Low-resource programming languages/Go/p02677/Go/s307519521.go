package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	a := float64(readInt())
	b := float64(readInt())
	h := float64(readInt())
	m := float64(readInt())

	radianDegree360 := 2 * math.Pi
	radianDegree90 := math.Pi / 2
	//	fmt.Printf("radianDegre360 = %f, degree = %f\n", radianDegree360, radianDegree360*360/radianDegree360)
	//	fmt.Printf("radianDegre90  = %f, degree = %f\n", radianDegree90, radianDegree90*360/radianDegree360)

	radianH := radianDegree90 - (h/12.0)*radianDegree360 - (1.0/12.0)*radianDegree360*(m/60)
	posHx := a * math.Cos(radianH)
	posHy := a * math.Sin(radianH)

	radianM := radianDegree90 - (m/60.0)*radianDegree360
	posMx := b * math.Cos(radianM)
	posMy := b * math.Sin(radianM)

	//	fmt.Printf("radianH = %f, degree = %f\n", radianH, radianH*360/radianDegree360)
	//	fmt.Printf("radianM = %f, degree = %f\n", radianM, radianM*360/radianDegree360)

	//	fmt.Printf("H = (%f, %f)\n", posHx, posHy)
	//	fmt.Printf("M = (%f, %f)\n", posMx, posMy)

	ans := math.Sqrt((posHx-posMx)*(posHx-posMx) + (posHy-posMy)*(posHy-posMy))
	fmt.Println(ans)
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}
