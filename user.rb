class User
  # ゲッター・セッター（10~18行目）をコメントアウトして、以下の4行目をコメントアウト外しても同じ挙動
  # attr_accessorがゲッターとセッターを定義している
  # attr_accessor :money

  # 初期化
  def initialize(money)
    @money = money
  end

  # ゲッター
  def money
    @money
  end

  # セッター
  def money=(money)
    money = money
  end

  # インスタンスメソッド
  # ドリンク選択
  def choose_drink
    gets.to_i
  end
end