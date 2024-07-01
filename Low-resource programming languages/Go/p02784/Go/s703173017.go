package main

import "bufio"
import "fmt"
import "os"
import "strconv"

func main() {
        var H, N, i int
        fmt.Scanf("%d %d", &H, &N)
        sc := bufio.NewScanner(os.Stdin)
        sc.Split(bufio.ScanWords)
        for i = 0; i < N; i++ {
                sc.Scan()
                n, e := strconv.Atoi(sc.Text())
                if e != nil {
                        panic(e)
                }
                H = H - n
                if H <= 0 {
                        break
                }
        }
        if H > 0 {
                fmt.Println("No")
        } else {
                fmt.Println("Yes")
        }
}
