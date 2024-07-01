package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var scan *bufio.Scanner
var writer io.Writer

func init() {
	scan = bufio.NewScanner(os.Stdin)
	writer = os.Stdout
	scan.Split(bufio.ScanWords)
}

func main() {
	solve()
}

// Job is pair(A, B)
type Job struct {
	A int
	B int
}

func reward(mc int, m int, jobs []Job, rwd int) int {
	if mc < 0 {
		return rwd
	} else {
		jobed := -1
		rwdc := 0
		for i, job := range jobs {
			if job.A < m-mc+1 && job.B > rwdc {
				jobed = i
				rwdc = job.B
			}
		}
		if jobed > -1 {
			rwd += jobs[jobed].B
			//			fmt.Fprintln(os.Stdout, jobs[jobed])
			jobs = append(jobs[:jobed], jobs[jobed+1:]...)
		}
		//		fmt.Fprintln(os.Stdout, rwd)
		rwd = reward(mc-1, m, jobs, rwd)
		return rwd
	}
}
func solve() {
	n, m := nextInt(), nextInt()
	jobs := make([]Job, n)
	res := 0
	for i := 0; i < n; i++ {
		a, b := nextInt(), nextInt()
		jobs = append(jobs, Job{a, b})
	}
	res = reward(m, m, jobs, 0)
	fmt.Fprint(writer, res)
}

func nextWord() string {
	scan.Scan()
	str := scan.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}
