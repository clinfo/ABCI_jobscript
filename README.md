# ABCI_jobscript

ABCIでジョブを投げるのに使えるスクリプトです。
## 使い方

~/tmpを作ってこれらをホームにおくと使えます。  
`qsub_command.sh python hogehoge --option `
みたいな感じでジョブが投げれます。  
任意のディレクトリでqsub_command.shにシンボリックリンクをはって使うこともできます。

rt_G.small=1のところを計算に応じて大きさ変えてもらえればと思います
## ジョブ実行リソース
|資源タイプ|資源タイプ名|説明|計算資源概要|ポイント|
|:--:|:--:|:--:|:--:|:--:|
|Full|rt_F|ノード占有|4GPU,40コア,360GBメモリ|1.0 ポイント/時間|
|G.large|rt_G.large|ノード共有<br>GPU利用|4GPU,20コア,240GBメモリ|0.9 ポイント/時間|
|G.small|rt_G.small|ノード共有<br>GPU利用|20コア,120GBメモリ|0.6 ポイント/時間|
|C.large|rt_C.large|ノード共有<br>CPUのみ利用|1GPU,5コア,60GBメモリ|0.3 ポイント/時間|
|C.small|rt_C.small|ノード共有<br>CPUのみ利用|5コア,30GBメモリ|0.2 ポイント/時間|
