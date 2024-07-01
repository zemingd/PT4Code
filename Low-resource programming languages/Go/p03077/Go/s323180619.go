package main
import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
    if sc.Scan() {
        ret, _ := strconv.Atoi(sc.Text())
        return ret
    }
    return 0
}

func main(){
    n := readInt()
    var capacities [5]int
    min_cap := int(1e15)
    fmt.Println(min_cap)
    for i := range capacities {
        cap := readInt()
        capacities[i] = cap
        if cap < min_cap {
            min_cap = cap
        }
    }
    
    requiredTime := n / min_cap + 5
    if n / min_cap == 1 {
        requiredTime -= 1
    }

    fmt.Println(requiredTime)
}
