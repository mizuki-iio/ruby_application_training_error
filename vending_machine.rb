class VendingMachine
  # 初期化
  def initialize(drinks)
    drinks = drinks
  end

  # ゲッター
  def drinks
    @drinks
  end

  # インスタンスメソッド
  # ドリンク一覧表示
  def show_drinks
    puts "-----------------------------------------------"
    puts "いらっしゃい！！！好きな商品を選んで数字を入力してね！！"
    self.drinks.each_with_index do |drink, i|
      puts "[#{i+1}]：#{drink.name} #{drink.price}円"
    end
  end

  # ドリンク購入
  def pay(user)
    puts "商品を選んでください"
    chosen_drink = self.drinks[user.choose_drink - 1]

    # 商品在庫の判定
    if chosen_drink.number == 0
      puts "ごめんなさい、#{chosen_drink.name}は売り切れです。"
      return
    end

    charge = user.money - chosen_drink.price

    # 購入可能な金額かの判定
    if charge >= 0
      puts "#{chosen_drink.name}のお買い上げありがとうございます！"
      puts "おつりは#{charge}円です！"
      chosen_drink.pay
      user.money = charge
    else
      puts "投入金額が足りないよ！"
      return
    end

  end

end