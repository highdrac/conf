# conf

雑多な設定類を適当に放り込むリポジトリ。

# directory

/
|-- dotfiles       # .系ファイル
|-- sublime        # SublimeTextのPackages/User
`-- windows        # Windows固有設定
    `-- shortcuts  # ランチャに放り込むショートカット群

# memo

## sublime

### 設定の共有について

設定の共有方法は[公式](https://packagecontrol.io/docs/syncing)に書かれているのでそれを使うこと。

### パッケージ一覧

インストールしたパッケージは以下。

|     パッケージ名     |               概要               |          備考          |
|----------------------|----------------------------------|------------------------|
| Package Control      | パッケージ管理                   | 必須                   |
| IMESupport           | 日本語入力                       | 必須                   |
| ConvertToUTF8        | 文字コード                       | 必須                   |
| SublimeCodeIntel     | コード入力補完                   |                        |
| SublimeLinter        | コード構文チェック               |                        |
| SublimeLinter-php    | コード構文チェック               |                        |
| SublimeLinter-jshint | コード構文チェック               | 要node.js              |
| SublimeLinter-ruby   | コード構文チェック               |                        |
| SublimeLinter-pep8   | コード構文チェック               | 要pep8(pip install)    |
| FileDiffs            | ファイルを比較                   |                        |
| TrailingSpaces       | 行末の空白を削除                 |                        |
| OmniMarkupPreviewer  | Markdownプレビュー               |                        |
| Monokai Extended     | Markdownシンタックスハイライト   |                        |
| Markdown Extended    | Markdownシンタックスハイライト   |                        |
| Markdown TOC         | Markdown目次自動生成             |                        |
| Table Editor         | Markdownテーブル記述             |                        |
| Theme - Brogrammer   | テーマ                           |                        |
| Evernote             | Evernote連携                     |                        |
| Random Everything    | ランダムデータ作成               |                        |
| InsertDate           | 日時を挿入                       |                        |
| BracketHighlighter   | 括弧の強調表示                   |                        |
| Smart Delete         | 次行頭のスペースを削除           |                        |
| Emmet                | HTML/CSSの入力補助               |                        |
| DataConverter        | CSVをコンバート                  |                        |
| DocBlockr            | コメント入力補助                 |                        |
| FindKeyConflicts     | ショートカット重複チェック       |                        |
| AdvancedNewFile      | ファイル作成時にフォルダごと生成 |                        |
| CaseConversion       | メソッド名等の変換               |                        |
| IncermentSelection   | 複数選択の数字をインクリメント   |                        |
| Origami              | ペイン操作                       |                        |
| Pretty JSON          | JSONフォーマット調整             |                        |

## shortcuts

ランチャが64bitでないとProgramFiles系のショートカットのパスが正しく認識されない。
ランチャを64bit対応のものにするか、ProgramFiles宛のショートカットを避けること。


