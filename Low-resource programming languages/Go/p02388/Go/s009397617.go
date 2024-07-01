package main
import (
       "fmt"
       "os"
       "bufio"
       "strconv"
)

func main() {
     sc := bufio.NewScanner(os.Stdin)

     var n int
     if sc.Scan() {
        n, _ = strconv.Atoi(sc.Text())
     }
     fmt.Printf("%d\n", n*n*n);
}

