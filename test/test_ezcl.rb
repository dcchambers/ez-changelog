require 'minitest/autorun'

class TestEZCL < Minitest::Test
  def test_ezcl
    puts "Testing ezcl. Expected exit code: true"
    assert_equal true, system("ruby ezcl.rb < test/inputfile")
  end
end
