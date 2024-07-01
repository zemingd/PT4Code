package main

import (
        "fmt"
)

type sugarWarter struct {
        sugar, warter int
}

var (
        a, b, c, d, e, f int
        ans              = sugarWarter{-1, 0}
        checked          = map[sugarWarter]struct{}{}
)

func main() {
        fmt.Scan(&a, &b, &c, &d, &e, &f)
        dfs(0, 100*a)
        dfs(0, 100*b)
        fmt.Printf("%d %d\n", ans.sugar+ans.warter, ans.sugar)
}

func dfs(sugar, warter int) {
        if sugar+warter > f || sugar*100 > warter*e {
                return
        }
        if _, c := checked[sugarWarter{sugar, warter}]; c {
                return
        }
        checked[sugarWarter{sugar, warter}] = struct{}{}
        if sugar*(ans.warter+ans.sugar) > ans.sugar*(sugar+warter) {
                ans = sugarWarter{sugar, warter}
        }
        dfs(sugar, warter+100*a)
        dfs(sugar, warter+100*b)
        dfs(sugar+c, warter)
        dfs(sugar+d, warter)
        return
}