package main
import (
        "fmt"
        "strings"
        "strconv"
)
func main() {
        var in string
        fmt.Scan(&in)
        abcd := strings.Split(in, "")
        for bits:=0; bits<(1<<uint64(4)); bits++ {
                r := 0
                exp := ""
                for i:=0; i<4; i++ {
                        v, _ := strconv.Atoi(abcd[i])
                        exp = exp + abcd[i]
                        if (bits>>uint64(i))&1 == 1 {
                                r += v
                                exp += "+"
                        } else {
                                r -= v
                                exp += "-"
                        }
                }
                if r == 7 {
                        fmt.Printf("%s=7\n", exp)
                        break
                }
        }
}