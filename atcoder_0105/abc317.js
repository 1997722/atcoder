const readline = require("readline");

// 標準入力を処理する
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

const input = [];

// 標準入力を行ごとに取得
rl.on("line", (line) => {
  input.push(line);
}).on("close", () => {
  const n = parseInt(input[0], 10); // 1行目: n
  const a = input[1].split(" ").map(Number); // 2行目: 配列a

  // 配列をソート
  const sortedA = a.sort((x, y) => x - y);

  // 条件をチェック
  for (let i = 0; i < n - 1; i++) {
    if (sortedA[i] + 1 !== sortedA[i + 1]) {
      break;
    }
  }
});