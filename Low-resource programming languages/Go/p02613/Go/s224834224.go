package main
import . "fmt"
// github.com/EndlessCheng/codeforces-go
func main() {
	c,n,s:=map[string]int{},0,""
	for Scan(&n); n>0; n-- {
		Scan(&s)
		c[s]++
	}
	for _, s := range []string{"AC","WA","TLE","RE"} {
		Println(s,"x",c[s])
	}
}
