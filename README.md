# https://roommanagementryucho.herokuapp.com/
# 清掃状況管理ツール
## 機能
### 各階の部屋の残り清掃数の確認
残り清掃数は清掃要諦の部屋の内未清掃の部屋数を表示してくれます。

詳細を押すことで選択したフロアの部屋情報のページに移ります。

<img width="1512" alt="スクリーンショット 2022-09-16 14 49 15" src="https://user-images.githubusercontent.com/86188830/190565843-ba41651d-0b19-4040-ac27-ba2b6e44cc47.png">

### 各部屋の清掃状況の確認
statusには未清掃・清掃中・清掃済みの３つの状態があります。

また、アウト部屋は赤いハイライト、ステイメイクは緑色のハイライトで確認できます。

詳細を押すと選択した部屋の情報のページに移ります。

<img width="1512" alt="スクリーンショット 2022-09-16 14 50 24" src="https://user-images.githubusercontent.com/86188830/190566049-25263158-cece-4842-92ee-e77bac401cde.png">

<img width="1512" alt="スクリーンショット 2022-09-16 15 49 55" src="https://user-images.githubusercontent.com/86188830/190574802-b378a7b9-fce0-4b30-8fed-7819b61c800a.png">


### 部屋の部屋タイプ・ステータス・清掃開始時間・清掃終了時間・清掃時間の確認

<img width="1512" alt="スクリーンショット 2022-09-16 14 52 24" src="https://user-images.githubusercontent.com/86188830/190566233-f98be6d5-254d-4289-b75b-e187673b4da9.png">

担当者名は清掃する人を入力します。

清掃開始ボタンを押すと押した時の現在時刻と記載した担当者名を記録します。

この時ステータスは清掃中に変更されます。

<img width="1512" alt="スクリーンショット 2022-09-16 14 52 57" src="https://user-images.githubusercontent.com/86188830/190566296-99102f0e-79af-4658-b865-c264844dfc75.png">

清掃終了ボタンを押すと押した時の減税時刻を記録し、ステータスを清掃済みに変更します。

最後に清掃開始時間と清掃終了時間の差分から清掃時間を計算し表示してくれます。

<img width="1512" alt="スクリーンショット 2022-09-16 14 54 49" src="https://user-images.githubusercontent.com/86188830/190566557-7deb89a7-2874-48f0-92dd-976670fc7573.png">




### 朝礼での共有事項の編集

内線には5065が記録されています。

どんでんには当日のアウト部屋の部屋数を入力します。

ステイは当日のステイ数を入力します。

お知らせには当日従業員に伝える共有事項を入力します。

どんでん・ステイの入力項目は必須項目です。

変更ボタンで変更反映されます。

<img width="1512" alt="スクリーンショット 2022-09-16 14 53 41" src="https://user-images.githubusercontent.com/86188830/190566392-d1ef7110-335f-4bd5-961b-218f4a3552a3.png">




### 部屋情報の編集

部屋情報をすべてリセットするボタンを押すと、すべての部屋の清掃状況がリセットされます。

<img width="1512" alt="スクリーンショット 2022-09-16 14 54 03" src="https://user-images.githubusercontent.com/86188830/190566449-3e95932f-fa8c-4093-8bc6-68fc06558fac.png">

Room_typeは指定なし・Trundle・SuperKing・Trundle+SuperKingの４項目があります。必要に応じて変更します。

初期値は指定なし。

situationはでんどん・ステイ・清掃不要に3項目があります。

初期値は清掃不要が選択されています。

<img width="1512" alt="スクリーンショット 2022-09-16 14 54 20" src="https://user-images.githubusercontent.com/86188830/190566503-877ee539-baaf-418a-af00-847c85a63a16.png">

変更ボタンを押すと変更が反映されます。
