package main
 
import (
	"fmt"
)
 
var n int
var s string
func main() {
	fmt.Scan(&n)
	m := map[string]int { "AC": 0, "WA": 0, "TLE": 0, "RE": 0  }
	for i:= 0; i < n; i++ { 
		fmt.Scan(&s)
		m[s]++
	} 
    fmt.Printf("AC x %v\n", m["AC"])
    fmt.Printf("WA x %v\n", m["WA"])
    fmt.Printf("TLE x %v\n", m["TLE"])
    fmt.Printf("RE x %v\n", m["RE"])
}
