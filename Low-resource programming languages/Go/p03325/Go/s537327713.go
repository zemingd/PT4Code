package main

import (
	"bufio"
	"fmt"
	"os"
)

func max(a, b uint) uint {
	if a >= b { return a}
	return b
}

func main(){
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var N int 
	fmt.Fscan(r, &N)
	var ans uint = 0
	for i := 0; i < N; i++ {
		var a uint
		fmt.Fscan(r, &a)
		for a > 0 && a%2 == 0{
			a /= 2;
			ans++;
		}
	}
	

	fmt.Fprintln(w, ans)
}