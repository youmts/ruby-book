require 'minitest/autorun'
require './lib/effects'

class EffectTest < Minitest::Test
  def setup
    @text = 'Ruby is fun!'
  end

  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call(@text)
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call(@text)
  end

  def test_loud
    effect = Effects.loud(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effect.call(@text)
  end
end

