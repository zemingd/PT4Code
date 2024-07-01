package main

import (
	"fmt"
	"math"
	"strings"
	"bufio"
	"os"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
  	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 10000)
	sc.Buffer(buf, 10000000)
  
  	readLine(sc)
	s := readLine(sc)

	blackStoneCount := strings.Count(s, "#")
	whiteStoneCount := strings.Count(s, ".")
	answer := int(math.Min(float64(blackStoneCount), float64(whiteStoneCount)))
	
  	fmt.Println(answer)
}
