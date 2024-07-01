package main


import (
    "bufio"
    "os"
    "strconv"
    "fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
    sc.Scan()
    s, _ := strconv.Atoi(sc.Text())
    mem := make(map[int]int)
    for i := 1; i< 1000001; i++ {
        _, ok := mem[s]
        if ok {
            fmt.Println(i)
            break
        } else {
            mem[s] = i
            if s % 2 == 0 {
                s = s / 2
            } else {
                s = s * 3 + 1
            }
        }
    }
}
