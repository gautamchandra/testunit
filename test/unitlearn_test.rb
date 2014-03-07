 require_relative '../testclass.rb'
 require "test/unit"
 require 'mocha/test_unit'

 class TCTestUnitLearn < Test::Unit::TestCase

  def test_addition
    obj = TestUnitLearn.new(3,4)
    assert_equal 7,obj.get_sum
  end

  def test_system_command
    cmd = "ls"
    obj = TestUnitLearn.new(1,1)

    assert_nothing_raised do
      obj.expects(:exec_cmd).with("ls").returns(".")
      obj.execute_command(cmd)
    end
  end

  def test_system_command_failure
    cmd = "ls"
    obj = TestUnitLearn.new(1,1)


    assert_raise do
      obj.expects(:exec_cmd).with("ls").raises(Exception, 'message')
      obj.execute_command(cmd)
    end
  end


 end
