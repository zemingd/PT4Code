package main

import (
	"fmt"
	"io"
	"os"
)

func answer(r io.Reader, w io.Writer) {
	var numPeople int
	var numKinds int
	fmt.Fscan(r, &numPeople)
	fmt.Fscan(r, &numKinds)
	var s [30]int

	for i := 0; i < numPeople; i++ {
		var numFavorites int
		fmt.Fscan(r, &numFavorites)
		for j := 0; j < numFavorites; j++ {
			var index int
			fmt.Fscan(r, &index)
			s[index-1]++
		}
	}

	sum := 0
	for i := 0; i < numKinds; i++ {
		if s[i] == numPeople {
			sum++
		}
	}

	fmt.Fprintf(w, "%d", sum)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
