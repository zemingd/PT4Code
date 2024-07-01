package main
import (
       "fmt"
       "os"
       "strconv"
       "bufio"
)

func main() {
     sc := bufio.NewScanner(os.Stdin)

     var n int
     if sc.Scan() { n, _ = strconv.Atoi(sc.Text()) }
     h := n / 3600
     s := n % 60
     m := (n - h*3600) / 60
     fmt.Printf("%d:%d:%d\n", h, m, s)
}

