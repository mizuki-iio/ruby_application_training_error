class Drink
  # 初期化
  def initialize(name, price, number)
    @name = name
    @price = price
    @number = number
  end
  
  # ゲッター
  def name
    name
  end

  def price
    @price
  end

  def number
    @number
  end

  # インスタンスメソッド
  # 購入後に在庫を減らす処理
  def pay
    @number -= 1
  end
end