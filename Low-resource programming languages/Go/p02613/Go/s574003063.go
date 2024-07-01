package main
import (
	"fmt"
)
func main() {
    var N int
    fmt.Scan(&N)
    
    var ac, wa, tle, re int
    for i := 0; i < N; i++ {
        var s string
        fmt.Scan(&s)
        switch s {
        case "AC":
            ac++
        case "WA":
            wa++
        case "TLE":
            tle++
        case "RE":
            re++
        }
    }
    
    fmt.Printf("AC x %d\n", ac)
    fmt.Printf("WA x %d\n", wa)
    fmt.Printf("TLE x %d\n", tle)
    fmt.Printf("RE x %d\n", re)
}