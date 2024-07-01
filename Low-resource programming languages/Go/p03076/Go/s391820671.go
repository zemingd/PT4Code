package main
import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func kuriage(i int) int {
    amari := i % 10
    if amari == 0 {
        return i
    } else {
        return i - i % 10 + 10
    }
}

func main(){
    var waitTime [5]int
    var minIdx int
    min := 10
    for i := range waitTime {
        if sc.Scan() {
            t, _ := strconv.Atoi(sc.Text())
            if amari := t % 10; 0 < amari && amari < min {
                minIdx = i
                min = amari
            }
            waitTime[i] = t
            // fmt.Println(waitTime[i])
        }
    }
    // fmt.Println(min)
    
    var minTotal int
    for i, v := range waitTime {
        if i == minIdx {
            minTotal += v
        } else {
            minTotal += kuriage(v)
        }
    }
    fmt.Println(minTotal)
}
