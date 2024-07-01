package main

import (
        "errors"
        "fmt"
        "strconv"
)

func main() {
        var s string
        fmt.Scan(&s)
        nums := make([]int, 4)
        for i := 0; i < 4; i++ {
                nums[i], _ = strconv.Atoi(s[i : i+1])
        }
        exp, _ := dfs(nums[0], nums[1:len(nums)])
        fmt.Printf("%d%s\n", nums[0], exp)
}
func dfs(sum int, rests []int) (exp string, err error) {
        if len(rests) == 0 {
                if sum != 7 {
                        return "", errors.New("invalid")
                }
                return "=7", nil
        }
        exp, err = dfs(sum+rests[0], rests[1:len(rests)])
        if err == nil {
                return fmt.Sprintf("+%d%s", rests[0], exp), nil
        }
        exp, err = dfs(sum-rests[0], rests[1:len(rests)])
        if err == nil {
                return fmt.Sprintf("-%d%s", rests[0], exp), nil
        }
        return "", err
}