package main

import (
	"fmt"
)

// 与えられた状態numberのdigit桁が正直者かどうかのチェック
func isHonest(number uint, digit uint) uint {
	// 1とANDを取得すると１桁目の数がとれる。桁数分ずらして比較する
	return (number >> digit) & 1
}

// 状態numberにおける正直者の数をカウント
func countHonest(n uint) uint {
	result := uint(0)
	for i := 0; n > 0; i++ {
		// 末尾が1(正直者)だったらresultに1追加する
		if (n & 1) == 1 {
			result++
		}
		n >>= 1 // 一桁ずらす
	}
	return result
}

func main() {

	// 読み込み数取得
	var count uint
	fmt.Scan(&count)

	countVoices := make([]uint, count)
	voices := make([][]uint, count)
	types := make([][]uint, count)

	// ユーザーデータ作成
	for i := uint(0); i < count; i++ {
		fmt.Scan(&countVoices[i])
		voices[i] = make([]uint, countVoices[i])
		types[i] = make([]uint, countVoices[i])

		for j := uint(0); j < countVoices[i]; j++ {
			fmt.Scan(&voices[i][j], &types[i][j])
			voices[i][j]-- // メンバーIDは-1してラベルと同じにする
		}
	}

	// 最終的な回答の初期化
	answer := uint(0)

	// bit全探索
	// 2進数を左にSビット論理シフトすると、2^S倍することに相当
	// 2 ^ ユーザー数 を計算して2bit的に全パターンを取得している
	max_loop := uint(1) << count
	for situation := uint(0); situation < max_loop; situation++ {

		// 発言に齟齬があるかチェックするフラグ
		ok := true

		// ユーザー数分チェックする
		for member := uint(0); member < count; member++ {

			// ユーザーが正直じゃない（嘘つき）だったら何もせずループさせる
			if isHonest(situation, member) == 0 {
				continue
			}
			// ユーザー毎の発言をチェックしていく,一回でも発言に齟齬があったら
			for k := uint(0); k < countVoices[member]; k++ {

				// チェックの状況と発言が違っている場合は何もせずにループさせる
				if isHonest(situation, uint(voices[member][k])) != types[member][k] {
					ok = false
					break
				}
			}
			if !ok {
				break
			}
		}
		// 正直者回答者をカウントする。今まで保存しているものよりも正直ものが多かったら入れ替える
		if newAnswer := countHonest(situation); ok && newAnswer > answer {
			answer = newAnswer
		}
	}

	// 解答表示
	fmt.Printf("%d", answer)

}
