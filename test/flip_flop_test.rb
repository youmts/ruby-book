require 'minitest/autorun'
require './lib/flip_flop.rb'

class FlipFlopTest < Minitest::Test
  def test_flip_flop_simple
    assert_equal '', flip_flop('')
  end
  
  def test_flip_flop
    text = <<~TEXT
      おはようございます
      いただきます
      カレーを食べる
      スープを飲む
      デザートを食べる
      ごちそうさま
      ひるねをする
      しごとをする
      いただきます
      ピザを食べる
      ケーキを食べる
      コーヒーを飲む
      ごちそうさま
      おやすみなさい
    TEXT

    expects = <<~TEXT
      いただきます
      カレーを食べる
      スープを飲む
      デザートを食べる
      ごちそうさま
      いただきます
      ピザを食べる
      ケーキを食べる
      コーヒーを飲む
      ごちそうさま
    TEXT

    assert_equal expects, flip_flop(text)
  end
end
