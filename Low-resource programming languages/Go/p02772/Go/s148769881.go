package main
import (
    "fmt"
    "bufio"
    "os"
    "strings"
    "strconv"
    )
func main() {
    input := bufio.NewScanner(os.Stdin)
    input.Scan()
    
    input.Scan()
    var ok bool
    for _, v := range strings.Split(input.Text(), " ") {
        n, _ := strconv.Atoi(v)
        if n % 2 == 0 {
            ok = map[bool]bool{true: true, false: false}[n % 3 == 0  || n % 5 == 0]
            if !ok {
                break
            }
        }
    }
    if ok {
        fmt.Println("APPROVED")
    } else {
        fmt.Println("DENIED")
    }
}