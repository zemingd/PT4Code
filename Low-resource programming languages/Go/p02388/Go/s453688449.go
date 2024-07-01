package main
import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func main() {
    input, _ := strconv.Atoi( nextLine())
    fmt.Println(input*input*input)
}
