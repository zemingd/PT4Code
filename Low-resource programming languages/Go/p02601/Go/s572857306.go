package main

import (
	"bufio"
	. "fmt"
	"io"
	"os"
)

func solve(a,b,c,k int) bool {
	if(c>b && b>a){
		return true
	}
	if(k==0){
		return false
	}
	return solve(a,b,2*c,k-1)||solve(a,2*b,c,k-1)||solve(2*a,b,c,k-1)
}

// Credits - github.com/EndlessCheng/codeforces-go
func solve2(_r io.Reader, _w io.Writer) {
	in := bufio.NewReader(_r)
	out := bufio.NewWriter(_w)
	defer out.Flush()

	var a,b,c,k int
	Fscan(in, &a,&b,&c)
	Fscan(in, &k)
	if solve(a,b,c,k){
		Fprintln(out,"Yes")
	} else {
		Fprintln(out,"No")
	}
}

func main() { solve2(os.Stdin, os.Stdout) }

