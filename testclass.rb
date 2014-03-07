
class TestUnitLearn
  def initialize(a,b)
    @sum = a+b
  end
  def get_sum
    return @sum
  end

  def execute_command(cmd)
    return exec_cmd(cmd)
  end

  def exec_cmd(cmd)
    cmdout = `#{cmd}`
    status = $?.success?
    raise "Error executing #{cmd}: #{status}" unless status
    return cmdout
  end

end

