package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	var S string
	var zero, one float64
	var r float64
	s := bufio.NewScanner(os.Stdin)
	b := make([]byte, 1000000)
	s.Buffer(b, 1000000)
	s.Scan()
	S = s.Text()
	for i := 0; i < len(S); i++ {
		if S[i:i+1] == "0" {
			zero++
		} else {
			one++
		}
	}
	r = math.Min(zero, one) * 2
	fmt.Println(r)
}