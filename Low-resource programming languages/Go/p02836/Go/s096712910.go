package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main()  {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	S := scanner.Text()

	counter := 0

	for i:=0; i < int(math.Floor(float64(len(S) / 2))); i++ {
		if(S[i:i+1] != S[len(S)-(i+1):len(S)-i]) {
			counter++
		}
	}

	fmt.Println(counter)
}