# ABCI_jobscript

ABCIでジョブを投げるのに使えるスクリプトです。
## 使い方

~/tmpを作ってこれらをホームにおくと使えます。  
`qsub_command.sh python hogehoge --option `
みたいな感じでジョブが投げれます。  
任意のディレクトリでqsub_command.shにシンボリックリンクをはって使うこともできます。

## my_qrsh, my_qsub_commandコマンドを作って使う
`my_qsub_command python hogehoge --option `のように簡易的に使う構成です

### ダウンロード・書き替え
```
mkdir ~/tmp
git clone https://github.com/clinfo/ABCI_jobscript.git
```
`ABCI_jobscript/qrsh.sh` と `ABCI_jobscript/my_qsub_command.sh`
をエディタで開いて、グループ名の部分（gca50095）を書き換える

### `~/bin`以下に配置してパスを通す

```
mkdir ~/bin
mv ABCI_jobscript/qrsh.sh ~/bin/qrsh
mv ABCI_jobscript/my_qsub_command.sh ~/bin/my_qsub_command.sh

echo "export PATH=/home/$(whoami)/bin:\$PATH" >> .bashrc
```

以下のような配置になる

```
bin/
├── my_qrsh
└── my_qsub_command
tmp/
```

## ジョブ実行リソース
ABCI_jobscript/qrsh.sh
ABCI_jobscript/my_qsub_command.sh
の中をエディタで開いて、
rt_G.small=1のところを計算に応じて大きさ変えてもらえればと思います

|資源タイプ|資源タイプ名|説明|計算資源概要|ポイント|
|:--:|:--:|:--:|:--:|:--:|
|Full|rt_F|ノード占有|4GPU,40コア,360GBメモリ|1.0 ポイント/時間|
|G.large|rt_G.large|ノード共有<br>GPU利用|4GPU,20コア,240GBメモリ|0.9 ポイント/時間|
|G.small|rt_G.small|ノード共有<br>GPU利用|20コア,120GBメモリ|0.3 ポイント/時間|
|C.large|rt_C.large|ノード共有<br>CPUのみ利用|1GPU,5コア,60GBメモリ|0.6 ポイント/時間|
|C.small|rt_C.small|ノード共有<br>CPUのみ利用|5コア,30GBメモリ|0.2 ポイント/時間|

（H31年度/2019年度）  
